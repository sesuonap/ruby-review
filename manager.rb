class Employee 
  attr_reader :first_name, :salary, :active
  attr_writer :first_name, :last_name, :active    
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end 

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  
end 

class Manager < Employee 
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end 
  def send_report
    puts "Sending Email..."
    # the code to send email 
    puts "Email sent."
  end 
  def give_all_raises
    @employees.each { |employee| employee.give_annual_raise}
  end 
  def fire_all
    @employees.each { |employee| employee.active = false}
  end 
end 



employee_1 = Employee.new(
                          {first_name: "Tim", 
                          last_name: "Taylor", 
                          salary: 70000, 
                          acive: true
  })

employee_2 = Employee.new(
                          first_name: "Walter", 
                          last_name: "Cronkite", 
                          salary: 80000, 
                          active: true
                          ) # Can remove { } if the hash is the only input, or last input 

manager = Manager.new(
                      first_name: "Betty",
                      last_name: "Crocker",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

p employee_1.salary 
manager.give_all_raises
p employee_1.salary
manager.fire_all
p employee_1 
