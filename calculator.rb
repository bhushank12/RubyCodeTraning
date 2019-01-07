def divide(input1, input2)
  if input2 == 0
  	puts "Infinite"
  	return 
  else
  	input1 / input2
  end
end


puts "Input your first number"
input1 = gets.chomp

lower_case_a = ('a'..'z').to_a
upper_case_A = ('A'..'Z').to_a
symbols = "@#$%^&!~"

input1.each_char do |f|
	if lower_case_a.include? f
		puts "Invalid" 
		return
	elsif upper_case_A.include? f
		puts "Invalid" 
		return
	elsif symbols.include? f
		puts "Invalid"
		return
	end	
end

input1 = input1.to_f

puts "Input your second number"
input2 = gets.chomp
input2.each_char do |f|
	if lower_case_a.include? f
		puts "Invalid" 
		return
	elsif upper_case_A.include?f
		puts "Invalid" 
		return
	elsif symbols.include? f
		puts "Invalid"
		return
	end	
end

input2 = input2.to_f

puts "which operation you want to perform"
operation = gets.chomp


case operation
when '+'
	puts "Addition Result=>#{input1+input2}"
when '-'
	puts "Substraction Result=>#{input1-input2}"
when '*'
	puts "multiplication Result=>#{input1*input2}"
when '/'
	result = divide(input1, input2)
	puts "Divide Result=>#{result}"
else
	puts "Invalid Input for operation"
	return 
end