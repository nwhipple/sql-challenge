CREATE TABLE public.departments
(
    dept_no varchar(6) NOT NULL,
	dept_no text NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE public.titles
(
	title_id varchar(5) NOT NULL,
	title varchar(50) NOT NULL,
 PRIMARY KEY (title_id)
);

CREATE TABLE public.employee
(
	emp_no int NOT NULL,
	emp_title_id varchar(5) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	sex char NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id),
    PRIMARY KEY (emp_no)
);

CREATE TABLE public.dept_emp
(
    emp_no varchar(6),
	dept_no text,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE public.dept_manager
(
	dept_no text NOT NULL,
    emp_no varchar(6) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no)
);

CREATE TABLE public.salaries
(
    emp_no varchar(6) NOT NULL,
	salary integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
    PRIMARY KEY (emp_no)
);