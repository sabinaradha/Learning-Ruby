require "prime"
x = 1
array = []
while x <= 200
	new_array = array.push(x)
	new_array.select! do |num|
	if num.prime? == true
		puts num
	end
	x += 1
end

puts new_array