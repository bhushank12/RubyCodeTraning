hotel_menu = {
                Box8: { 'Rajma'=> 30, 'Vada Pav'=> 50, 'Dal'=> 20 },
                Locavore: { 'Dal'=> 10, 'Vada Pav'=> 30, 'Sabji'=> 40 },
                Flavours: { 'Ice Cream'=> 10, 'Burger'=> 30, 'Vada Pav'=> 30 }
             }

puts 'Enter Dish Name'
dish_name=gets.chomp
puts 'Enter Price'
dish_price=gets.chomp.to_f

flg=0

for get_keys in hotel_menu.keys
	unless hotel_menu[get_keys][dish_name]==nil
		if hotel_menu[get_keys][dish_name] <= dish_price
			if(flg==0)
				puts "--------Hotels Available-----------"
				flg=1
			end
			puts get_keys
		end
	end
end

if(flg==0)
  puts "---------Sorry No Hotels Available----------"
end