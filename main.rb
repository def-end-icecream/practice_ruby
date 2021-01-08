require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({first_name: "Peter", last_name: "Jang", salary: 800000, active: true})
employee2 = Actualize::Employee.new(first_name: "Jay", last_name: "Wengrow", salary: 100000, active: true)
manager = Actualize::Manager.new(first_name: "Vinny", last_name: "Knepper", salary: 130000, active: true, employees: [employee1, employee2])
intern = Actualize::Intern.new(first_name: "Antonio", last_name: "Restivo", salary: 20000, active: true)

employee1.print_info
employee2.print_info
# puts employee2.give_annual_raise
# puts employee1.first_name
# puts employee1.salary
puts employee2.active
employee2.active = false
puts employee2.active
# manager.print_info
# p manager.employees
# manager.give_all_raises
manager.fire_all_employees
intern.print_info
manager.send_email_report
intern.send_email_report