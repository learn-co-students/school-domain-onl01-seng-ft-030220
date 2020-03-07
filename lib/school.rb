require 'pry'

class School 
  attr_reader :name, :roster
  def initialize(name, roster={})
    @name = name
    @roster = roster 
  end
  
  def add_student(name, grade)
    if roster[grade] == nil 
      roster[grade] = []
      roster[grade] << name 
    else
      roster[grade] << name 
    end
  end
  
  def grade(grade_number)
    roster[grade_number]
  end
  
  def sort 
    roster.each do |grade, students|
      students.sort!
    end
  end
end

school = School.new("Minadeo Elementary School")
puts school.name