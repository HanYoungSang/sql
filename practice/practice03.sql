-- 문제1 (105명)
select emp.employee_id as "사번", 
       emp.first_name as "이름", 
	   dep.department_name as "부서명",
	   man.first_name as "매니저 이름"
  from employees emp,
       departments dep,
	   employees man
 where emp.department_id = dep.department_id 
   and emp.manager_id = man.employee_id;
   
-- 문제2 (25개 국)
  select a.region_name as "지역이름",
         b.country_name as "나라이름" 
    from regions a,
         countries b
   where a.region_id = b.region_id
order by a.region_name desc, b.country_name desc;

--문제3(11개)
select a.department_id as "부서번호",
	   a.department_name as "부서이름",
	   b.first_name as "매니저 이름",
	   c.city as "도시",
	   d.country_name as "나라",
	   e.region_name as "지역"	
  from departments a,
       employees b,
	   locations c,
	   countries d,
	   regions e
 where a.manager_id = b.employee_id
   and a.location_id = c.location_id
   and c.country_id = d.country_id
   and d.region_id = e.region_id;
   
-- 문제4(2명)
select c.employee_id as "사번",
       c.first_name || ' ' || c.last_name as "이름"
  from job_history a,
       jobs b,
	   employees c
 where a.job_id = b.job_id
   and a.employee_id = c.employee_id
   and b.job_title = 'Public Accountant'; 	   
       	    
-- 문제 5 (107명)
    select a.employee_id as "사번", 
	       a.last_name as "이름",
		   nvl(b.department_name, '없음') as "부서"
      from employees a
 left join departments b
        on a.department_id = b.department_id
  order by a.last_name asc;		        

-- 문제6(37명)
select emp.employee_id as "사번",
       emp.last_name as "성",
	   emp.hire_date as "채용일",
	   man.last_name as "매니저 성",    -- 참고    
	   man.hire_date as "매니저 채용일"  -- 참고
  from employees emp,
       employees man
 where emp.manager_id = man.employee_id
   and emp.hire_date < man.hire_date;	      
