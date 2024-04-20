# sql-challenge references and citations
I used some code from this site to build composite keys: https://kb.objectrocket.com/postgresql/postgresql-composite-primary-keys-629
CREATE TABLE course_grades (
    quarter_id INTEGER,
    course_id TEXT,
    student_id INTEGER,
    grade INTEGER,
    PRIMARY KEY(quarter_id, course_id, student_id)
);

I used comde from these sites to learn how to create tables and set primary and foreign keys https://www.udemy.com/course/the-ultimate-mysql-bootcamp-go-from-sql-beginner-to-expert/learn/lecture/34526890#overview; https://www.youtube.com/watch?v=6Jf7eTkIaR4
CREATE TABLE public.employee
(
    emp_no character varying(6),
    emp_title_ids character varying(5),
    birth_date date,
    first_name text,
    last_name text,
    sex "char",
    hire_date date,
    FOREIGN KEY (emp_title_ids) REFERENCES titles(emp_title_id)
    PRIMARY KEY (emp_no)
);
![image](https://github.com/nwhipple/sql-challenge/assets/66106887/ed05acf8-0d8b-4866-9d01-53db47a31c7d)
