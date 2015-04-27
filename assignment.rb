require 'colorize'

#append entire lines into words array
words = []
File.open("dictionary.txt", "r").each_line do |line|
	words << line
end

puts "Input random word:"
print">".yellow
input = $stdin.readline()

#store available answers in answers array
answers = []
words.each do |word|
	if word.chars.sort == input.chars.sort
		answers << word
    end
end

#print answers to console
if answers.size > 0
	answers.each do |answer|
		puts "Answer: "+ answer  
	end
else
	puts "Sorry, no solutions are possible."
end

