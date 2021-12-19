-- 1. List all employees and their projects
select e.first_name, e.last_name, p.title from employee as e 
left join project_employee as pe on pe.employee_id=e.id 
left join project as p on p.id=pe.project_id;