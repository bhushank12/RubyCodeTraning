def my_select(a)
	arr=Array.new 
	for arr_value in a
		if(yield(arr_value))
			arr.push(arr_value)
		end
	end
	arr
end

def my_select_bang(a) 
	a.each_with_index do |arr_value,i|
		if(!(yield(arr_value)))
			a.slice!(i)
		end
	end
	a
end

a=[1,2,3,4,5,6]
puts "Select Result=> #{my_select(a) {|num| num.even?}}"
print(a)
puts

puts "Select Bang Result=> #{my_select_bang(a) {|num| num.even?}}"
print(a)
puts
