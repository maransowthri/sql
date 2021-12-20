-- 1. List all employees and their projects
select e.first_name, e.last_name, p.title from employee as e 
left join project_employee as pe on pe.employee_id=e.id 
left join project as p on p.id=pe.project_id;

-- 2. List all employees who are part of a specifc team
select e.first_name, e.last_name, t.name from employee as e 
inner join team as t on e.team_id=t.id 
where t.name='Data Analysts';

-- 3. Which employees are at building no 3
select e.first_name, e.last_name, b.name from employee as e
inner join team as t on e.team_id=t.id 
inner join building as b on b.id=t.building_id
where b.id=3;
