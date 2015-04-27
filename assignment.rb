require 'colorize'

words = []
answers = []
#append entire words into words array
File.open("dictionary.txt", "r").each_line do |line|
	words << line
end

puts "Input random word:"
print">".yellow
line = $stdin.readline()

#store available answers in answers array
words.each do |w|
	if w.chars.sort == line.chars.sort
		answers << w
    end
end

#print answers to console
if answers.size > 0
	answers.each do |a|
		print">".green
		print "Answer: "+ a  
	end
else
	puts "Sorry, no solutions are possible."
end

