-- 문제1
select emp.employee_id as "사번", 
       emp.first_name as "이름", 
	   dep.department_name as "부서명",
	   man.first_name as "매니저 이름"
  from employees emp,
       departments dep,
	   employees man
 where emp.department_id = dep.department_id 
   and emp.manager_id = man.employee_id;
   
-- 문제2
  select a.region_name as "지역이름",
         b.country_name as "나라이름" 
    from regions a,
         countries b
   where a.region_id = b.region_id
order by a.region_name desc, b.country_name desc;

--문제3
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
   
-- 문제4
   	    
  
  
   
  	   



    	   