# Write your MySQL query statement below
/* select t.name as Employee
from Employee t
join Employee m
on t.managerId = m.id
where t.salary>m.salary; */
select name as Employee
from Employee e
where e.salary > (
    select salary
    from Employee m
    where e.managerId = m.id
);