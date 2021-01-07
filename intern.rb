module EmailReportable
  def send_email_report
    puts "Sending email..."
    # use fancy email sending library
    puts "Email sent!"
  end
end

class Employee
  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
  
  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee
  attr_reader :employees 
  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      p employee.give_annual_raise
    end
  end

  def fire_all_employees
    index = 0
    while employees.length > index
      p employees[index].active = false
      index += 1
    end
  end
end

class Intern < Employee
  include EmailReportable
end

employee1 = Employee.new({first_name: "Peter", last_name: "Jang", salary: 800000, active: true})
employee2 = Employee.new(first_name: "Jay", last_name: "Wengrow", salary: 100000, active: true)
manager = Manager.new(first_name: "Vinny", last_name: "Knepper", salary: 130000, active: true, employees: [employee1, employee2])
intern = Intern.new(first_name: "Antonio", last_name: "Restivo", salary: 20000, active: true)
intern.print_info
manager.send_email_report
intern.send_email_report