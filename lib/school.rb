class School
  attr_accessor :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
    
  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end
  
  def grade(student_grade)
    @roster[student_grade]
  end
  
  def sort
    sorted = {}
    @roster.each do |student_grade, student_name|
      sorted[student_grade] = student_name.sort
    end
    sorted
  end
end