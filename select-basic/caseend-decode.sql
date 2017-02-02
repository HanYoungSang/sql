select employee_id, job_id from employees;

select distinct job_id from employees;

-- case ~ end 문
SELECT employee_id,
	   salary,
	   CASE job_id
	  	WHEN 'AC_ACCOUNT' THEN salary + salary * 0.1
		WHEN 'AC_MGR' THEN salary + salary *0.2
		WHEN 'AC_ASST' THEN salary + salary *0.3
		ELSE salary
	   END AS "이번달 월급"
  FROM employees;
  
-- DECODE 함수 사용
SELECT employee_id,
       salary,
	   DECODE(job_id,
	          'AC_ACCOUNT', salary+salary*0.1,
			  'AC_MGR', salary + salary * 0.2,
			  'AC_ASST', salary + salary * 0.3,
			  salary ) AS "이번달 월급"
  FROM employees; 

   	   
      