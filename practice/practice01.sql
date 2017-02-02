-- 1번
  select first_name || ' ' || last_name as "이름",
	     salary as "월급",
	     phone_number as "전화번호" 
    from employees
order by hire_date asc; 
  
-- 2번
  select job_title,
         max_salary
    from jobs
order by max_salary desc;

-- 3번
select count(*)
  from employees
 where manager_id  is null;
  
-- 4번
  select job_id, 
         salary
    from employees
order by salary desc;

-- 5번
select count(*)
  from departments;

-- 6번
  select department_name 
    from departments
order by length( department_name ) desc;  

-- 7번
select count(*)
  from departments
 where manager_id is null; 

-- 8번
  select upper(country_name)
    from countries
order by upper(country_name) desc;  

-- 9번
  select region_name
    from regions
order by length(region_name) asc; 

-- 10번
  select distinct lower(city)
    from locations
order by lower(city) asc;