puts " Enter a number: " 
number = gets.to_i 
puts "*" * number* 3
puts "$" * (number*6) 
count = 0 
while count < (number *3)
print "$" 
print " " * (number * 6) 
puts "$" 
count += 2
end 
puts "$" * number* 6
