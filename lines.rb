# numbers = [
#   [1, 2, 3],
#   [2, 2, 2],
#   [3, 2, 1]

# ]
# # your code goes here
# lines = []
# # index = 0
# # while index < numbers.length
# #   stars = []
# #   row = numbers[index]
# #   index2 = 0
# #   while index2 < row.length
# #     stars << "*" * row[index2]
# #     index2 += 1
# #   end
# #   lines << stars.join(" ")
# #   index += 1
# # end
# numbers.each do |nums|
#   stars = []
#   nums.each do |num|
#     stars << "*" * num
#   end
#   lines << stars.join(" ")
# end

# lines.each { |line| puts line }

def avg(numbers)
  sum = 0
  numbers.each do |num|
    sum += num
  end
  p sum/numbers.length
end

avg([3, 2, 1])