filename = ARGV.first

txt = open(filename)

puts "Here is the file #{filename}."
print txt.read

txt.close
