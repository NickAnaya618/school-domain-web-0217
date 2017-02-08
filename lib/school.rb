# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    grade = roster[grade]
  end

  def sort
    grade_sort = {}

    roster.each do |grade, student_array|
      grade_sort[grade] = student_array.sort
    end

    grade_sort
  end
end
