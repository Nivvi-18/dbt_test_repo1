select s.id,
s.name,
s.dep_id,
s.location_id,
d.dep_name,
l.location_name
from {{ ref('raw_students') }} as s
--raw.raw_sch.student s
inner join {{ ref('raw_department') }} as d
--raw.raw_sch.department d
on s.dep_id = d.dep_id
inner join {{ ref('raw_locations') }} as l
--raw.raw_sch.locations l
on s.location_id = l.location_id