def numbers(x)
numbers = []

for i in (0..x) do 
	puts "At the top i is #{i}"
	numbers.push(i)

    i += 1
	puts "Numbers now: ", numbers
	puts "At the bottom i is #{i}"
end
end

numbers(6)