select count(emp_no), title
into retiring_titles
from unique_titles
group by title
order by count(title) DESC;

select distinct on (emp_no) emp_no, first_name, last_name, title
into unique_titles
from retirement_titles
where to_date = '9999-01-01'
order by emp_no, to_date DESC;

select em.emp_no, em.first_name, em.last_name, ti.title, ti.from_date, ti.to_date
into retirement_titles
from employees em
inner join titles ti on (ti.emp_no = em.emp_no)
where (em.birth_date between '1952-01-01' and '1955-12-31')
order by em.emp_no;



select distinct on (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date, de.from_date, de.to_date, ti.title
into mentorship_eligibility
from employees em
left join dept_emp de on de.emp_no = em.emp_no
left join titles ti on ti.emp_no = em.emp_no
where (ti.to_date='9999-01-01') and (em.birth_date between '1965-01-01' and '1965-12-31')
order by em.emp_no;
