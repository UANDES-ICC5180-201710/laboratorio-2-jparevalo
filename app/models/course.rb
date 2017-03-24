
class Course < ApplicationRecord
    belongs_to :person, :foreign_key => 'teacher_id'

    def self.search(search)
      if search
        self.where("title like ?", "%#{search}%")
      else
        self.all
      end
end
    def self.get_students(id)
        students = ::Student.where("course_id == ?", id)
        return students
        end
    def name
        title
    end
end
