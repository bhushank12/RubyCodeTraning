cnt = 0
line_number = 1
begin
	puts 'Enter filename like abc.txt'
	file_name = gets.chomp
	raise "File Not found Or Not Having Read Permission" if( ( File.exist?(file_name) && File.readable?(file_name) )==false)
	puts 'Enter word to search in file'
	search_word = gets.chomp

	File.open( "/home/bhushan/Josh/HW/9thJan_ruby/Code/#{file_name}", "r" ) do |f|
	  f.each_line do |line|
	    puts "Present on line #{cnt}" if( line.include?(search_word) == true )
	    cnt = cnt+1
	  end
	end
rescue Exception => e
	puts e.message
	cnt = cnt+1
	retry if(cnt<3)
	puts '---You Limit Your Chance---'
	exit
end

