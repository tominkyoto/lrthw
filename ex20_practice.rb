input_file = ARGV.first

def print_all(f)
	puts f.read
end

def print_a_line(f)
	puts "#{f.gets.chomp}" 
end

txt = open(input_file)

print_a_line(txt)
print_a_line(txt)

txt.close
