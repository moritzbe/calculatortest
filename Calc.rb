# SL1. The calculator

# We’ll start with something nice and easy so we learn this testing thing quickly.

# Write a class, called Calculator, that basically performs all four basic math operations: addition, substraction, multiplication and
# division. In order to keep it simple, all of them will have two numeric parameters.

# After writing your class, write several tests. For each one, print “OK” if it succeeded, “FAIL” otherwise, in order to test that
# everything is working out properly.
class Calculator
	def initialize(a, b)
		@a = a
		@b = b
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
	def division

		if @b == 0
			return nil
		else
			@a / @b
		end
	end
end

describe Calculator do 
	describe "#addition" do 
		it "should add 5 and 6" do
			expect(Calculator.new(5,6).addition).to eq(11)
		end

		it "should add 0 and 4" do
			expect(Calculator.new(0,4).addition).to eq(4)
		end
	end

	describe "#subtraction" do 
		it "should subtract 5 and 6" do
			expect(Calculator.new(5,6).subtraction).to eq(-1)
		end
	end

	describe "#Multiplication" do 
		it "should multiply 5 and 6" do
			expect(Calculator.new(5,6).multiplication).to eq(30)
		end
	end

	describe "#Devision" do 
		it "should devide 5 by 6" do
			expect(Calculator.new(5,6).devision).to eq(-1)
		end
	end


end
