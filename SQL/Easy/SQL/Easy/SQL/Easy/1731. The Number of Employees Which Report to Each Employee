select e1.employee_id, e1.name, reports_count = count(*), 
average_age = round(avg(cast (e2.age as decimal(10,2))),0)  from Employees e1
join Employees e2 on e1.employee_id = e2.reports_to
group by e1.employee_id, e1.name order by 1
