class Person
	
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	    @my_array =[]
	end
	def my_array
		@my_array = @my_array.push(@first_name, @last_name)
		puts @my_array
	end
end
sabina = Person.new("Sabina", "Koirala")

 class Person 
 	attr_accessor :age
 	def initialize(age)
 		@age = age
 	end
 
 end
 sabina = Person.new(24)


puts sabina.my_array


class ContactDetail
	attr_accessor :phoneNumbers, :emails
	def initialize (phoneNumbers, emails)
		@phoneNumbers = phoneNumbers
		@emails = emails
		@contact_array =[]
	end
	class PhoneNumber
		attr_reader :countryCode, :number
		def initialize(countryCode, number)
			@countryCode = countryCode
			@number = number
			@contactDetail = []
		end
	end

	class Email
		attr_reader :address
		def initialize(address)
			@address = address
		end

	end
	def contact_array
		@contact_array = @contact_array.push(@countryCode, @number, @address)
		puts @contact_array
	end

end
	sabina = PhoneNumber.new(+977, 9849145124)
	
	sabina = Email.new ("sbnkrl@gmail.com")
	

	puts sabina.contact_array