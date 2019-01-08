puts 'This is block'
def my_demo_block(a)
	a.each do |num|
	  if(yield(num))
	 		print "#{num} "
	  end
  end
end

a=[1,2,3,4,5,6]
my_demo_block(a) {|num| num.even?}

puts
puts 'This is proc' 
def my_demo_proc(a,&block)
	a.each do |num|
	  if(block.call(num))
			print "#{num} "
	  end
  end
end

obj_proc=Proc.new{|num| num.even?}
my_demo_proc(a, &obj_proc)

puts 'This is lambda'
def my_demo_labda(a,&block)
	a.each do |num|
	  if(block.call(num))
			print "#{num} "
	  end
  end
end

obj_lambda=lambda{|num| num.even?}
my_demo_labda(a, &obj_lambda)