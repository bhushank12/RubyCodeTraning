cnt = 0
line_number = 1
flg = 0

begin
	puts 'Enter filename like abc.txt'
	file_name = gets.chomp
	puts 'Enter word to search in file'
	search_word = gets.chomp

	File.open(file_name)
	File.readable?(file_name) 

	File.open(file_name, "r" ) do |f|
	  f.each_line do |line|
	    if( line.include?(search_word) == true )
	    	puts "Present on line #{line_number}" 
	    	flg = 1
	    end
	    line_number = line_number + 1
	  end
	end

	if(flg == 0)
		puts '--Sorry No Word Found--'
	end

rescue Errno::EACCES
	puts 'Permission Denied'
	retry if(cnt < 3)
rescue Errno::ENOENT	
	puts 'No file found'
	retry if(cnt < 3)
cnt = cnt + 1
puts 'You limit your chance'
end
