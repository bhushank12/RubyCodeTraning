class Calculator
	
	attr_accessor :input1, :input2
	
	def initialize(input1 ,input2)
		@input1 = input1
		@input2 = input2
	end	

	def addition
		@input1 + @input2
	end

	def substraction
		@input1 - @input2
	end

	def multiplication
		@input1 * @input2
	end

	def divide
		@input1 / @input2
	end

	def common_operation(operator)
		case operator
		when "+"
			puts "------Addittion Result :#{addition} "
		when "-"
			puts "------Substraction Result :#{substraction} "
		when "*"
			puts "------Multiplication Result :#{multiplication} "
		when  "/"
			puts "------Divide Result :#{divide} "
		end
	end

	def check_operator(operator)
		flg=false
		if (operator.eql?("+") || operator.eql?("-") || operator.eql?("*")|| operator.eql?("/"))
			flg=true
		end
	end
		

	def list_operation
		puts 'You Have These List Of Operation { \' + \' , \' - \' , \' * \' , \' / \' }'
		puts 'what you have to perform'
		operator = gets.chomp
		if check_operator( operator )
			common_operation( operator )
		else
			puts 'invalid operator'
			return
		end
	end
end

flg=0
loop do

	begin
		puts 'Enter First Value'
		input1 = Integer(gets.chomp)
		puts 'Enter Second Value'
		input2 = Integer(gets.chomp)
		input1 = input1.to_f
		input2 = input2.to_f
	rescue
		puts 'Invalid Input'
		retry
	end

	calculator_object1 = Calculator.new(input1, input2)
	calculator_object1.list_operation
	puts 'If you want to terminate enter 0 or 1 to continue'
	flg = gets.chomp.to_i
	break if flg == 0

end

