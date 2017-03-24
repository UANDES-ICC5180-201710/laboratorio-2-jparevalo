class Student < ApplicationRecord
    belongs_to :person, :foreign_key => 'student_id'
    belongs_to :course, :foreign_key => 'course_id'
end
