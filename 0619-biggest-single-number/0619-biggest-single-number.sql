/* # Write your MySQL query statement below
select max(num) as num
from MyNumbers
where num in(
    select num
    from MyNumbers
    group by num
    having count(*) = 1
);
 */

 select max(num) as num
 from MyNumbers m1
 where 1 = (
    select count(*)
    from MyNumbers m2
    where m1.num = m2.num
 )