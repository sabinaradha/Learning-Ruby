array = []
x= 1
while x <= 100
	array << x
	x += 1
end
array.select! do |num| 
		if num%2 == 0
			new_array = array.push(num)
		end
end
puts new_array

	
