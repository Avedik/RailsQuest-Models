class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments

  def self.list_course_with_count
    Course.all.sort_by { |cg| cg.cnt }
  end

  def cnt
    students.size
  end
end
