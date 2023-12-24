class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :grades, through: :enrollments

  def average_grade
    if grades.empty?
      0.0
    else
      total_score = grades.sum(:score)
      num_grades = grades.count
      (total_score.to_f / num_grades).round(2)
    end
  end
end
