class Employee
  attr_reader :name, :salary, :title, :boss 
  
  def initialize(name,title,salary,boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    @salary * miltiplier
  end
  
  def assign_to_manager(manager) #manager_object
    manager.assigned_employees << self
  end

end