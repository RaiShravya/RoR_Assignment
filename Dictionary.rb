class Dictionary
def ad

@dict = Hash.new
@dict = {  
 	"Assignment" => "a task or piece of work allocated to someone.",
	"Basilica" => "a large oblong hall or building with double colonnades.",
	"Computer" => "an electronic device for storing and processing data.",
	"Desktop" => "a computer suitable for use at an ordinary desk.",
	"Enterprise" => "a project or undertaking, especially a bold or complex one.",
	"Fiscal" => "relating to government revenue, especially taxes.",
	"Orthopedic" => "branch of medicine dealing with the correction of deformities of bones." ,
	"Ruby" => "a precious stone consisting of corundum.",
        "Scientific " => "based on or characterized by the methods and principles of science."
        }
 
puts @dict.sort
 def search(word)
    if @dict.key?(word)==true
        a=@dict.fetch(word)
        puts " Meaning of word is #{a}"
        puts "\n\n"
    else
        puts "Word is not found in the dictionary \n\n"
    end
end

def add(word, meaning)
    @dict[word]=meaning
    puts "\n"
    puts @dict.sort
    puts "\n\n"
end

def update(word, meaning)
    if @dict.key?(word)==true
        @dict[word]=meaning
        puts "Meaning is updated in the dictionary "
        # @dict.update(word,meaning)
        puts @dict.sort
        puts "\n\n"
    else
        puts "Word is not found in the dictionary \n\n"
    end
end

def del(word)
    if @dict.key?(word)==true
        @dict.delete(word)
        puts "Deleted the word from the dictionary"
        puts @dict.sort
    else
        puts "Word is not found in the dictionary"
    end
end

x=0
while x!=6
    puts "Choose from the menu below"
    puts "1. View the dictionary"
    puts "2. Search for a word"
    puts "3. Add a word "
    puts "4. Update a word"
    puts "5. Delete a word"
    puts "6. Exit"
    x=gets.to_i
    case x
    when 1
        puts @dict.sort
    when 2
        puts "Search a word"
        word=gets.strip
        search(word)
    when 3
        puts "Enter the word to be added"
        word=gets.strip
        puts "Enter the meaning of the word #{word}"
        meaning=gets.strip
        add(word,meaning)
    when 4
        puts "Enter the word to update"
        word=gets.strip
        puts "Enter the updated meaning of the word #{word}"
        updated_meaning=gets.strip
        update(word,meaning)

    when 5
        puts "Enter the word to be deleted from the dictionary"
        word = gets.strip
        del(word)
    when 6
        puts " Thank you!"
    else
        puts "Please enter a valid value "
    end
end
puts x

end 
end
obj=Dictionary.new
obj.ad
