filename = ARGV.first

txt = open(filename)

puts "Here's your file: #{filename}"
print txt.read 

print "Put the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

puts "Here's your file: #{file_again}"

print txt_again.read 
txt.close()
txt_again.close()
