class Student < ApplicationRecord
    belongs_to :person, :foreign_key => 'student_id'
    belongs_to :course, :foreign_key => 'course_id'

    def self.import_student(course_id,student_id)

        new_student = Student.new
        puts "iii"
        puts student_id
        puts "ooo"
        if student_id!=nil
            puts "okoko"
            new_student.student_id = student_id
            new_student.course_id = course_id
        end
        return new_student
    end
end
