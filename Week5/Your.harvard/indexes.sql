-- Speed up finding students by name
CREATE INDEX "search_students_by_name"
ON "students"("first_name", "last_name");

-- Speed up searching courses by department
CREATE INDEX "search_courses_by_department"
ON "courses"("department");

-- Speed up lookup in enrollments (student → course)
CREATE INDEX "search_enrollments_by_student"
ON "enrollments"("student_id");

-- Speed up lookup in enrollments (course → student)
CREATE INDEX "search_enrollments_by_course"
ON "enrollments"("course_id");

-- Speed up checking course requirements
CREATE INDEX "search_requirements_by_course"
ON "requirements"("course_id");

-- Speed up checking satisfies relation (student → requirement)
CREATE INDEX "search_satisfies_by_student"
ON "satisfies"("student_id");

-- Speed up lookup of satisfies relation by requirement
CREATE INDEX "search_satisfies_by_requirement"
ON "satisfies"("requirement_id");
