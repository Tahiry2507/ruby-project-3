File.write('project-3.txt', "Hello World\n")

File.open('./project-3.txt', 'r').each_line do |line|
	puts line
end

File.open('project-3.txt', 'a') { |text| text.write("It's going to be a great day!") }

# Dir.mkdir("my_new_directory")

if File.file?("project-3.txt")
	puts "yes, this file exists"

else
	puts "The file does not exist"
end
# Testing github....