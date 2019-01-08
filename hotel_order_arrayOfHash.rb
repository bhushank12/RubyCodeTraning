hotel_menu = {
							Box8: [{ dish:'Rajma',price:30 }, { dish:'Vada Pav',price:50 }, { dish:'Dal',price:20 }],
							Locavore: [{ dish:'Dal',price:10 }, { dish:'Vada Pav',price:30 }, { dish:'Sabji', price:40 }],
							Flavours: [{ dish:'Ice Cream',price:10 }, { dish:'Burger',price:30 }, { dish:'Vada Pav', price:30 }]
			 			 }

puts 'Enter Dish Name'
dish_name = gets.chomp
puts 'Enter Price'
dish_price = gets.chomp.to_f

flg = 1

for hotel_name in hotel_menu.keys
	for hash_in_array in hotel_menu[hotel_name]
		get_value=hash_in_array.values
		if( dish_name.eql?( get_value[0] ) && dish_price.to_f >= get_value[1].to_f )
			if(flg == 1)
				puts "---------Hotels Available For Yous---------"
				flg = 0
			end
			puts hotel_name
		end
	end
end

if(flg==1) 
	puts "----------Sorry No Hotels Available-------------"
end
