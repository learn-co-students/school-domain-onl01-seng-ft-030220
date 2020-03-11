class School
  
  attr_accessor :roster, :grade
  attr_writer :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    @student = {grade => student}
    @student.each do |grade, name|
      if @roster.include?(grade)
        roster[grade] << name
      else  
        @roster[grade] = []          
        @roster[grade] << name
      end
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, students|
      students.sort!
    end
  end
  
end