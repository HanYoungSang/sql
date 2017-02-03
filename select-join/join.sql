-- Inner Join (Equi Join)
select a.first_name, a.last_name, b.department_name 
  from employees a, departments b
 where a.department_id = b.department_id -- join 조건 (n-1) 
   and b.department_name like 'P%';      -- row 선택 조건
   
-- Inner Join (Equi Join, Self Join)
select a.first_name, b.first_name
  from employees a, employees b
 where a.manager_id = b.employee_id;
 
-- Outter Join
select count(*)
  from employees a,
       departments b
 where a.department_id = b.department_id;
  	     
select count(*)
  from employees a,
       departments b
 where a.department_id (+)= b.department_id;
 
select nvl(a.first_name, '소속 직원이 없음'), b.department_name
  from employees a,
       departments b
 where a.department_id (+)= b.department_id;
     
	 
select a.first_name, nvl(b.department_name, '부서가 없음')
  from employees a,
       departments b
 where b.department_id (+)= a.department_id;   