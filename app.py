from flask import Flask, render_template, request, session, redirect, url_for
import bcrypt
import db
import random

app = Flask(__name__)
app.secret_key = "super_secret_key"

@app.route('/')
def index():
    if 'student_id' in session:
        return redirect(url_for('dashboard'))
    return render_template('index.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    error = None
    msg = request.args.get('msg')
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password'].encode('utf-8')
        conn = db.get_db_connection()
        if conn:
            cursor = conn.cursor(dictionary=True)
            cursor.execute("SELECT * FROM students WHERE email=%s", (email,))
            user = cursor.fetchone()
            if user:
                if bcrypt.checkpw(password, user['password'].encode('utf-8')):
                    session['student_id'] = user['id']
                    session['full_name'] = user['full_name']
                    if not user.get('cgpa') or not user.get('technical_skills'):
                        return redirect(url_for('profile'))
                    return redirect(url_for('dashboard'))
                else:
                    error = "Incorrect Password!"
            else:
                error = "Email not found!"
            cursor.close()
            conn.close()
        else:
            error = "Database connection failed!"
    return render_template('login.html', error=error, msg=msg)

@app.route('/register', methods=['GET', 'POST'])
def register():
    error = None
    if request.method == 'POST':
        full_name = request.form['full_name']
        email = request.form['email']
        password = request.form['password'].encode('utf-8')
        hashed_password = bcrypt.hashpw(password, bcrypt.gensalt()).decode('utf-8')
        
        # FIX: Only sec_ans1 and sec_ans3
        sec_ans1 = request.form['sec_ans1'].strip().lower()
        sec_ans3 = request.form['sec_ans3'].strip().lower()
        
        conn = db.get_db_connection()
        if conn:
            cursor = conn.cursor(dictionary=True)
            cursor.execute("SELECT * FROM students WHERE email=%s", (email,))
            if cursor.fetchone():
                error = "Email already registered!"
            else:
                # FIX: Removed sec_ans2 from the INSERT query
                cursor.execute("""
                    INSERT INTO students 
                    (full_name,email,password,sec_ans1,sec_ans3)
                    VALUES (%s,%s,%s,%s,%s)
                """, (full_name, email, hashed_password, sec_ans1, sec_ans3))
                conn.commit()
                cursor.close()
                conn.close()
                return redirect(url_for('login', msg="registered"))
            cursor.close()
            conn.close()
        else:
            error = "Database connection failed!"
    return render_template('register.html', error=error)

@app.route('/dashboard')
def dashboard():
    if 'student_id' not in session:
        return redirect(url_for('login'))
    student_id = session['student_id']
    conn = db.get_db_connection()
    if not conn:
        return "Database error"
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM students WHERE id = %s", (student_id,))
    user = cursor.fetchone()
    if not user or not user.get('cgpa') or not user.get('technical_skills'):
        cursor.close()
        conn.close()
        return redirect(url_for('profile', msg='complete_profile'))
    student_cgpa = float(user['cgpa'])
    student_skills = [s.strip().lower() for s in user['technical_skills'].split(',')]
    cursor.execute("SELECT * FROM companies WHERE required_cgpa <= %s", (student_cgpa,))
    companies = cursor.fetchall()
    matched_companies = []
    for comp in companies:
        comp_skills = [s.strip().lower() for s in comp['required_skills'].split(',')]
        skill_match = set(student_skills).intersection(set(comp_skills))
        if len(skill_match) >= 1:
            comp['display_skills'] = [s.strip() for s in comp['required_skills'].split(',')]
            matched_companies.append(comp)
    cursor.close()
    conn.close()
    return render_template('dashboard.html', user=user, companies=matched_companies, student_cgpa=student_cgpa)

@app.route('/profile', methods=['GET', 'POST'])
def profile():
    if 'student_id' not in session:
        return redirect(url_for('login'))
    student_id = session['student_id']
    conn = db.get_db_connection()
    cursor = conn.cursor(dictionary=True)
    error = None
    if request.method == 'POST':
        full_name = request.form.get('full_name')
        degree = request.form.get('degree')
        current_year = request.form.get('current_year') 
        division = request.form.get('division')
        specialization = request.form.get('specialization')
        cgpa = request.form.get('cgpa')
        passing_year = request.form.get('passing_year')
        technical_skills = request.form.get('technical_skills')
        projects = request.form.get('projects')
        internship_exp = request.form.get('internship_exp')
        job_type = request.form.get('preferred_job_type')
        
        cursor.execute("""
            UPDATE students SET 
            full_name=%s, degree=%s, specialization=%s, cgpa=%s,
            passing_year=%s, technical_skills=%s, projects=%s,
            internship_exp=%s, preferred_job_type=%s,
            current_year=%s, division=%s
            WHERE id=%s
        """,(full_name, degree, specialization, cgpa, passing_year,
             technical_skills, projects, internship_exp, job_type, 
             current_year, division, student_id))
             
        conn.commit()
        session['full_name'] = full_name
        cursor.close()
        conn.close()
        return redirect(url_for('dashboard'))
        
    cursor.execute("SELECT * FROM students WHERE id=%s",(student_id,))
    current_data = cursor.fetchone()
    cursor.close()
    conn.close()
    return render_template('profile.html', current_data=current_data, error=error)


@app.route('/quiz')
def quiz():
    if 'student_id' not in session or not request.args.get('job_id'):
        return redirect(url_for('dashboard'))
    student_id=session['student_id']
    job_id=request.args.get('job_id')
    conn=db.get_db_connection()
    cursor=conn.cursor(dictionary=True)
    cursor.execute("SELECT required_skills FROM companies WHERE id=%s",(job_id,))
    job=cursor.fetchone()
    job_skills=[s.strip().upper() for s in job['required_skills'].split(',')]
    job_skill_string="'"+"','".join(job_skills)+"'"
    final_questions={}
    cursor.execute(f"SELECT * FROM questions WHERE skill_tag IN ({job_skill_string}) AND category='Technical' ORDER BY RAND() LIMIT 10")
    for row in cursor.fetchall():
        final_questions[row['id']]=row
    cursor.execute("SELECT * FROM questions WHERE category='English' ORDER BY RAND() LIMIT 5")
    for row in cursor.fetchall():
        final_questions[row['id']]=row
    cursor.execute("SELECT * FROM questions WHERE category IN ('Reasoning', 'Logical Reasoning', 'Aptitude') ORDER BY RAND() LIMIT 5")
    for row in cursor.fetchall():
        final_questions[row['id']]=row
    current_count = len(final_questions)
    if current_count < 20:
        needed = 20 - current_count
        existing_ids = ",".join(map(str, final_questions.keys()))
        not_in_clause = f"WHERE id NOT IN ({existing_ids})" if existing_ids else ""
        cursor.execute(f"SELECT * FROM questions {not_in_clause} ORDER BY RAND() LIMIT {needed}")
        for row in cursor.fetchall():
            final_questions[row['id']] = row
    questions_list=list(final_questions.values())
    random.shuffle(questions_list)
    cursor.close()
    conn.close()
    return render_template('quiz.html',job_id=job_id,final_questions=questions_list)

@app.route('/result', methods=['POST'])
def result():
    if 'student_id' not in session or 'job_id' not in request.form:
        return redirect(url_for('dashboard'))
    student_id=session['student_id']
    job_id=request.form['job_id']
    answers={}
    for key,value in request.form.items():
        if key.startswith('ans['):
            q_id=key[4:-1]
            answers[q_id]=value
    score=0
    weak_skills_array=[]
    conn=db.get_db_connection()
    cursor=conn.cursor(dictionary=True)
    for q_id,selected_opt in answers.items():
        cursor.execute("SELECT correct_option,skill_tag FROM questions WHERE id=%s",(q_id,))
        q_data=cursor.fetchone()
        if q_data:
            if q_data['correct_option']==selected_opt:
                score+=1
            else:
                weak_skills_array.append(q_data['skill_tag'])
    percentage=round((score/20)*100,2)
    status='PASS' if score>=13 else 'FAIL'
    unique_weak_skills=list(set(weak_skills_array))
    weak_skills_str=", ".join(unique_weak_skills) if unique_weak_skills else "None"
    cursor.execute("""
        INSERT INTO results (student_id,job_id,score,percentage,pass_fail_status,weak_skills)
        VALUES (%s,%s,%s,%s,%s,%s)
    """,(student_id,job_id,score,percentage,status,weak_skills_str))
    conn.commit()
    cursor.close()
    conn.close()
    return render_template('result.html',score=score,percentage=percentage,status=status,weak_skills_str=weak_skills_str)

@app.route('/history')
def history():
    if 'student_id' not in session:
        return redirect(url_for('login'))
    student_id=session['student_id']
    conn=db.get_db_connection()
    cursor=conn.cursor(dictionary=True)
    cursor.execute("""
        SELECT r.*,c.company_name,c.job_role
        FROM results r
        JOIN companies c ON r.job_id=c.id
        WHERE r.student_id=%s
        ORDER BY r.timestamp DESC
    """,(student_id,))
    history_records=cursor.fetchall()
    cursor.execute("""
        SELECT COUNT(id) as total_exams,
        MAX((score/20)*100) as highest_score,
        AVG((score/20)*100) as avg_score
        FROM results
        WHERE student_id=%s
    """,(student_id,))
    stats=cursor.fetchone()
    total_exams=stats['total_exams'] if stats and stats['total_exams'] else 0
    highest_score=f"{round(stats['highest_score'])}%" if stats and stats['highest_score'] else "0%"
    avg_score=f"{round(stats['avg_score'])}%" if stats and stats['avg_score'] else "0%"
    cursor.close()
    conn.close()
    return render_template('history.html',history_records=history_records,total_exams=total_exams,highest_score=highest_score,avg_score=avg_score)

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('index'))

@app.route('/forgot_password', methods=['GET', 'POST'])
def forgot_password():
    step = 1
    error = ""
    success = ""
    if request.method == 'POST':
        conn = db.get_db_connection()
        cursor = conn.cursor(dictionary=True)
        if 'check_user' in request.form:
            login_input = request.form['login_input'].strip()
            # FIX: Only sec_ans1 and sec_ans3 queried
            cursor.execute("SELECT id, sec_ans1, sec_ans3 FROM students WHERE email = %s", (login_input,))
            user = cursor.fetchone()
            if user:
                session['reset_id'] = login_input
                session['db_answers'] = [user['sec_ans1'], user['sec_ans3']]
                step = 2
            else:
                error = "Account not found!"
        elif 'verify_answers' in request.form:
            ans1 = request.form['ans1'].strip().lower()
            ans3 = request.form['ans3'].strip().lower()
            db_answers = session.get('db_answers', [])
            # FIX: Only checking 2 answers here
            if len(db_answers) == 2 and ans1 == db_answers[0].lower() and ans3 == db_answers[1].lower():
                step = 3
            else:
                error = "Security answers are incorrect!"
                step = 2
        elif 'update_password' in request.form:
            login_id = session.get('reset_id')
            new_password = bcrypt.hashpw(request.form['new_password'].encode('utf-8'), bcrypt.gensalt()).decode('utf-8')
            cursor.execute("UPDATE students SET password = %s WHERE email = %s", (new_password, login_id))
            conn.commit()
            success = "Password reset successfully! You can login now."
            session.pop('reset_id', None)
            session.pop('db_answers', None)
            step = 1
        cursor.close()
        conn.close()
    return render_template('forgot_password.html', step=step, error=error, success=success)

if __name__ == "__main__":
    app.run(debug=True)
