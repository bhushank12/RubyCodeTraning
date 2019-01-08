puts 'This is block'
def my_demo_block()
	puts "In my_demo_block"
	return
	puts "After Return in Block"
end
my_demo_block() {puts 'block'}
puts

puts 'This is proc'
def my_demo_proc
	puts "In my_demo_proc"
	obj_proc = Proc.new{return 1}
	obj_proc.call
	puts "After Return in Proc"
end
my_demo_proc

puts
puts 'This is lambda'
def my_demo_lambda()
	puts "In my_demo_lambda"
	obj_lambda=lambda{return 1}
	obj_lambda.call
	puts "After Return in lambda"
end
my_demo_lambda