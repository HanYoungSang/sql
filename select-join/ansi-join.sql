-- ansi join sql문 (1999 syntax)

-- natural join(inner join) 테이블의 칼럼 이름이 같으면 자동으로 조인이 걸린다.
-- 조인 대상 테이블에 같은 칼럼이 있는 경우
      select count(*)
        from employees a
natural join departments b;
--        on a.department_id = b.department_id
--       and a.manager_id = b.manager_id           

select count(*)
  from employees a
  join departments b
 using (department_id);
		
-- inner join 표준 SQL문( equi join 표준 SQL문)
select count(*)
  from employees a
  join departments b
	on a.department_id = b.department_id;
		  
select count(*)
  from employees a, departments b
 where a.department_id = b.department_id;
  
-- outter join
    select nvl(a.first_name, '소속지원이 없음'), b.department_name
      from employees a
right join departments b
        on a.department_id = b.department_id;

    select a.first_name, nvl(b.department_name, '부서가 없음')
      from employees a
left join departments b
        on a.department_id = b.department_id;  