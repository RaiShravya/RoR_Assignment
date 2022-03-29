puts "Please enter your phone number"
number=gets.chomp
if number= ~/\b^([0-9]{10})$\b/
puts "Valid phone number!"
else
puts "Invalid phone number!"
end

puts "Please enter your email address"
email=gets.chomp
  if email=~/[a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/
puts "Valid mail Id!"
else
puts "Invalid mail Id!"
end

puts"Please enter the File name"
file=gets.chomp
if file =~/[a-zA-Z]([a-zA-Z0-9_]*)(\.txt)/
puts "Valid File name!"
else
puts "Invalid File name!"
end


