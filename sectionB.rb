class Person
	attr_writer :age
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	    @my_array =[]
	end
	def my_array
		@my_array = @my_array.push(@first_name, @last_name)
	end
end
family1 = Person.new("Satish", "Koirala")
family2 = Person.new("Sandeep", "Koirala")
family3 = Person.new("Sarita", "Koirala")
family4 = Person.new("Sabita", "Koirala")
family5 = Person.new("Sangeeta", "Koirala")
family6 = Person.new("Sabina", "Koirala")

puts family1.my_array
puts family2.my_array
puts family3.my_array
puts family4.my_array
puts family5.my_array
puts family6.my_array
 
 puts @my_array.sort_by(first_name)

 puts @my_array.sort_by(last_name)

family1.age = 35
family1.age = 31
family1.age = 29
family1.age = 28
family1.age = 26
family1.age = 25

