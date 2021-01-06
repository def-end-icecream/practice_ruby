# # Ruby array
# employee1 = ["Peter", "Jang", 800000, true]
# employee2 = ["Jay", "Wengrow", 100000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# Ruby hash
# classic ruby string with hash rocket
employee1 = {"first_name" => "Peter", "last_name" => "Jang", "salary" => 800000, "active" => true}
# classic ruby symbol with hash rocket
# employee2 = {:first_name => "Jay", :last_name => "Wengrow", :salary => 10000, :active => true}
# ruby symbol with javascript syntax
employee2 = {first_name: "Jay", last_name: "Wengrow", salary: 10000, active: true}
puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."