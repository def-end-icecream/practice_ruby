require "./employee.rb"
require "./email_reportable.rb"

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