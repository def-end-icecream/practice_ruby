# # Ruby array
# employee1 = ["Peter", "Jang", 800000, true]
# employee2 = ["Jay", "Wengrow", 100000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# # Ruby hash
# # classic ruby string with hash rocket
# employee1 = {"first_name" => "Peter", "last_name" => "Jang", "salary" => 800000, "active" => true}
# # classic ruby symbol with hash rocket
# # employee2 = {:first_name => "Jay", :last_name => "Wengrow", :salary => 10000, :active => true}
# # ruby symbol with javascript syntax
# employee2 = {first_name: "Jay", last_name: "Wengrow", salary: 10000, active: true}
# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# Ruby class
class Employee
  # attr_reader :first_name, :last_name, :salary, :active 
  # attr_writer :active 
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

employee1 = Employee.new({first_name: "Peter", last_name: "Jang", salary: 800000, active: true})
employee2 = Employee.new(first_name: "Jay", last_name: "Wengrow", salary: 100000, active: true)
employee1.print_info
employee2.print_info
# puts employee2.give_annual_raise
# puts employee1.first_name
# puts employee1.salary
puts employee2.active
employee2.active = false
puts employee2.active