Select dt.name, avg(age) as Avg_age from employees e 
join departments dt 
on e.department_id = dt.id
group by department_id;

Select dt.name, count(*) as count_above_40 from employees e join departments dt 
on e.department_id = dt.id where age>40 group by department_id order by count_above_40 desc limit 1;

Select count(*) as recent_joins from employees where joining_date >= current_date() - interval 100 day;

Update employees as e
set joining_date = current_date() - interval 1 day
where e.department_id = 2;

-- -- Select * from employees where department_id = 2;

Select count(*) as recent_joins from employees where joining_date >= current_date() - interval 100 day;


-- mayur@ascendeum.com