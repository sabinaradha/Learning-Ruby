class Person

	attr_reader :first_name, :last_name, :full_name


=begin

	attr_reader is like creating methods

	def first_name
		@first_name
	end

	def last_name
		@last_name
	end

=end

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def to_s
		full_name
	end

	def full_name
		"#{first_name} #{last_name}"
	end

=begin
	if no attr_reader was declared, this should be
	"#{@first_name} #{@last_name}"
=end

end

people = []
people << Person.new("Sabina", "Koirala")
people << Person.new("Sandeep", "Koirala")
people << Person.new("Satish", "Koirala")
people << Person.new("Sabita", "Koirala")
people << Person.new("Sarita", "Koirala")
people << Person.new("Sangeeta", "Koirala")












