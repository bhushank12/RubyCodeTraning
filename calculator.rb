begin
	a=[]
	i=0
	while i<2
	  puts "Input #{i+1} number"
	  a[i] = Integer(gets.chomp).to_f
	  i = i+1
	end
rescue
	puts "Invalid Input\n"
retry
end

puts "which operation you want to perform"
op = gets.chomp
puts "Result=>#{a.inject(op.to_sym)}"