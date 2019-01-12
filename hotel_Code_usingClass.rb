class Hotel	

	def initialize( dish_name, dish_price)
		@hotel_menu = {
		              	Box8: {'Rajma' => 30, 'Vada Pav' => 50, 'Dal' => 20},
		              	Locavore: {'Dal' => 10, 'Vada Pav' => 30, 'Sabji' => 40},
			            	Flavours: {'Ice Cream' => 10, 'Burger' => 30, 'Vada Pav' => 30}
			            }

		@dish_name = dish_name
		@dish_price = dish_price
	end

	def hotel_available
		flg=0
		@hotel_menu.keys.each do |get_keys|
			unless @hotel_menu[get_keys][@dish_name] == nil
				if @hotel_menu[get_keys][@dish_name] <= @dish_price
					if(flg == 0)
						puts '---------Hotels Available------------'
						flg = 1
					end
					puts get_keys
				end
			end
		end
		puts '-----------Sorry No Hotels Available----------------' if flg == 0
	end
end

puts 'Enter Dish Name'
dish_name = gets.chomp
puts 'Enter Price'
dish_price = gets.chomp

Hotel_object = Hotel.new(dish_name, dish_price.to_f)
Hotel_object.hotel_available

