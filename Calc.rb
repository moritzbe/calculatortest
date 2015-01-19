# SL1. The calculator

# We’ll start with something nice and easy so we learn this testing thing quickly.

# Write a class, called Calculator, that basically performs all four basic math operations: addition, substraction, multiplication and
# division. In order to keep it simple, all of them will have two numeric parameters.

# After writing your class, write several tests. For each one, print “OK” if it succeeded, “FAIL” otherwise, in order to test that
# everything is working out properly.

require "pry"

class Calculator
	def initialize (a,b)
		@a = a
		@b = b
		@@a=a
		@@b=b
	end


	def addition
		@a + @b
	end

	def subtraction
		@a - @b
	end

	def multiplication
		@a * @b
	end

	def devision
		@a / @b
	end
end


result = Calculator.new(5,3)
result.addition

puts "Addition"
if result.addition == 8
	puts "true"
else
	puts "FALSE"
end






#class Results
#	def initialize (result)
#		binding.pry
#		@result = result
	# end

 #     def check_addition
 #     	if @result.addition == @@a * @@b
 #     		puts "true"
 #     	else 
 #     		puts "false"
 #     	end
 #     end
 # end

 






