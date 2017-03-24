class Person < ApplicationRecord
    def self.get_courses(id)
        student_class = ::Student.where("student_id == ?", id)
        courses = []
        student_class.each do |student_c|
            courses.append(student_c.course)
        end
        return courses
        end

    def self.get_available_courses(id)
        return ::Course.find(1)
    end

end
