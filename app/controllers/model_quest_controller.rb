class ModelQuestController < ApplicationController
  def step1; end

  def step2
    @students = Student.all
    @courses = Course.all
  end

  def step3
    @enrollments = Enrollment.preload(:student, :course).all
  end

  def step4
    @students = Student.preload(:grades).all
  end

  def step5
    @courses_groups = Course.list_course_with_count # [{title: 'A', name: 3},...]
  end

  def final; end
end
