-- порахувати успішність студентів залежно від року навчання
select student_year, student_id, ROUND(AVG(grade)) as avg_grade from student 
left join enrolment
using(student_id)
left join course
using(course_id)
where grade is NOT NULL
group by (student_year, student_id)
order by student_year


-- для кожного з студентів знайти його середній бал у порівнянні з середнім балом по групі

SELECT DISTINCT s.name || ' ' || s.surname as full_name, group_id,
ROUND(AVG(e.grade) over (partition by s.group_id),2) as avg_group_grade,
ROUND(AVG(e.grade) over (partition by s.student_id),2) as avg_student_grade FROM student s
left join enrolment e
using(student_id)
where grade is not null
order by group_id


-- порахувати статистику записів на курси для кожного року навчання:
--      кількість курсів
--      кількість записів
--      кількість студентів, що вже отримали бали

select c.student_year, count(distinct c.course_id) as courses, 
count(*) as enrolments, 
count(distinct s.student_id) 
filter (where e.grade is not null) as students_with_grades  
from course c
inner join enrolment e
using(course_id)
left join student s
using(student_id)
left join student_group sg
using(group_id)
group by c.student_year
