def my_map(a)
	arr=Array.new
	for arr_value in a
		arr.push(yield(arr_value))
	end
	arr
end

def my_map!(a)
	a.each_with_index do |arr_value,i|
		a[i]=yield(arr_value)
	end
	a
end

a=[1,2,3,4,5]
puts "Map Result New Array #{ my_map(a) {|num| num*2}}"
puts "Original Array => #{a.join(' ')}"
puts

puts "Map_bang Result New Array #{ my_map!(a) {|num| num*2}}"
puts "Original Array => #{ a.join(' ')}"