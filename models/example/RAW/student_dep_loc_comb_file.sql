select s.id,
s.name,
s.dep_id,
s.location_id,
d.dep_name,
l.location_name
from raw.raw_sch.student s
inner join raw.raw_sch.department d
on s.dep_id = d.dep_id
inner join raw.raw_sch.locations l
on s.location_id = l.location_id