-- Для кожного курсу знайти в якому мінімальному семестрі він може читатись
with recursive semester AS (
    select c.course_id, c.name, 1 AS min_semester
    from course c
    where c.course_id NOT IN (select course_id from course_prerequisite)
    union all
    select cp.course_id, c1.name, s.min_semester + 1
    from course_prerequisite cp
    JOIN semester s ON cp.prerequisite_course_id = s.course_id
    JOIN course c1 ON c1.course_id = cp.course_id
)
select s.course_id, s.name, max(s.min_semester) as min_semester from semester s
group by(s.course_id, s.name)
order by min_semester;


-- Знайти всіх студентів, які записані на більше курсів ніж в середньому студенти

 with num_of_courses_for_student as (
  select s.student_id, s.name|| ' ' || s.surname as full_name, count(e.course_id) as num_of_courses 
  from student s
  left join enrolment e
  using(student_id)
  group by (s.student_id, full_name)
  order by s.student_id
 )
 select * from num_of_courses_for_student 
 where num_of_courses > (
select round(avg(n.num_of_courses)) 
from num_of_courses_for_student n
 )
 
-- Знайти топ-3 студенти у кожному курсі за отриманими балами
select t.course_id, t.course_name, t.full_name, t.grade, t.rnk from (
  select c.course_id, c.name as course_name, s.name || ' ' || s.surname as full_name, e.grade,
  rank() over(partition by c.course_id order by e.grade desc) as rnk
  from student s
  left join enrolment e
  using(student_id)
  left join course c
  using(course_id)
  where e.grade is not null
) t
where  t.rnk <= 3
order by t.course_id, t.rnk