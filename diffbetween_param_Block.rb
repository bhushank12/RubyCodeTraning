puts
puts 'Proc will work if number of passing input is more than receive'
proc_obj = Proc.new{ |x, y| x+y }
puts "--With Two Arguement Result #{ proc_obj.call(1, 2) }"
puts "--With Three Arguement Result #{ proc_obj.call(1, 2, 3) }"

puts
puts 'Lambda give error if number of passing input is more than receive'
labmda_obj = lambda{ |x, y| x+y }
puts "--With Two Arguement Result #{ labmda_obj.call(1, 2) }"
puts "--With Three Arguement Result #{ labmda_obj.call(1, 2, 3) }"