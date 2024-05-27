SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;