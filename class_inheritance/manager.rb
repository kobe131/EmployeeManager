require_relative 'employee'

class Manager < Employee
    
  attr_reader :assigned_employees, :name, :salary, :title, :boss
  
  def initialize(name,title,salary,boss)
    super(name,title,salary,boss)
    @assigned_employees = []  # should hold employee objects
  end
  
  def bonus(multiplier)
    acc = 0
    self.assigned_employees.each do |e|
      acc += multiplier * e.salary + e.bonus(multiplier)
    end 
    return acc 
  end 
  

end

