class School
  attr_reader :title, :roster

  def initialize(title)
    @title = title
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |kids| kids.sort! }
  end
end
