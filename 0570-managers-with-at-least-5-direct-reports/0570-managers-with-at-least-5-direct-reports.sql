select e.name
from Employee as e
join Employee as e1
on e.id = e1.managerId
group by e.id
having count(e1.id) >= 5;