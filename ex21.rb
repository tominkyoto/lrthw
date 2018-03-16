def add(a,b)
	puts "ADDING #{a} + #{b}"
	return a + b
end

def subtract(a,b)
	puts "SUBTRACTING #{a} - #{b}"
	return a - b 
end

def multiply(a,b)
	puts "MULTIPLYING #{a} * #{b}"
	return a * b
end

def divide(a,b)
	puts "DIVIDING #{a} / #{b}"
	return a / b
end

puts "Let's do some math with just functions!"

age = add(30,7) 
height = subtract(1.75, 0.1)
weight = multiply(30,2)
iq = divide(300, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here's a puzzle."

what = add(age,subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"