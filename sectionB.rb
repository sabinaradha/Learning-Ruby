class Person

	include Comparable

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

# Comparable method
	def <=>(other_person)
		self.first_name <=> other_person.first_name
	end

=begin
	if no attr_reader was declared, this should be
	"#{@first_name} #{@last_name}"
=end

end


class People

	include Enumerable

# Enumerable module method
	def each
		if block_given?
			all_people.each {|a| yield(a)}
		end
	end


	attr_accessor :all_people

	def initialize
		@all_people = []
	end

end

p = People.new()
p.all_people << Person.new("Sabina", "Koirala")
p.all_people << Person.new("Sandeep", "Koirala")
p.all_people << Person.new("Satish", "Koirala")
p.all_people << Person.new("Sabita", "Koirala")
p.all_people << Person.new("Sarita", "Koirala")
p.all_people << Person.new("Sangeeta", "Koirala")


# Notice this is the effect of Enumerable Mixins
# You can iterate over arbitrary class object People
p.each do |person| 
	puts person
end

# We can also use any collection methods with this now

puts p.map(&:first_name)

# We can also use custom sort for people now


# Notice collection operator also works fine, as the 
# collected classes already implement Comparable protocol
puts p.sort









