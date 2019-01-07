hotel_menu = { Box8: [ "Rajma,30","Vada Pav,50","Dal,20"], Locavore: ["Dal,10","Vada Pav,30","Sabji,40"], Flavours: ["Ice Cream,10","Sandwitch,20", "Burger,30", "Vada Pav,30"]}

puts "Input Your Dish And Price With Comma Separated"
input = gets.chomp
split_input = input.split(",")
for k in hotel_menu.keys
	for v in hotel_menu[k]
		split_v = v.split(",")
		if((split_v.first==split_input.first)&&(split_input.last >=split_v.last))
			puts(k)
		end
	end
end