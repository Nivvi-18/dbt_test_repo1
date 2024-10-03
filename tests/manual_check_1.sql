with cte_1 as
(
   select * 
from {{ ref('raw_customers') }} 
)


select name,count(*)
from cte_1
group by 1
having count(*) > 1
