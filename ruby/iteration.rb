leagues = {
1 => 'spain',
2 => 'england',
3 => 'italy',
4 => 'france'


}


teams = ["Real Madrid", "Manchester", "Juventus", "Paris"]

leagues.each do |i|
	puts i
end

puts "BEFORE MAP"





teams.map! do |i|
	puts i
	i.upcase
end

puts "AFTER MAP"

p teams
puts  "NEW METHOD"

teams.delete_if { |string| string.length<6}
p teams

teams.keep_if { |string| string.length>10}
p teams

teams.select {|string| string.length==10}
p teams



