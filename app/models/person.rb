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
        return ::Course.all
    end

    # def self.new_person(student_id,course_id):
    #     if student_id
    #         s = Student.new
    #         s.student_id = student_id
    #         s.course_id = course_id
    #         s.save
    #     end
    #     return Person.new
    # end

end
