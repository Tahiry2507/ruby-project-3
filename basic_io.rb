# Create a ruby script that does the following:
# 1. Writes "Hello World" to a file.

File.write('project-3.txt', "Hello World\n")

# 2. Reads the text file (created in step 1) and prints it's contents to the screen

File.open('./project-3.txt', 'r').each_line do |line|
	puts line
end

# 3. Appends the text file (created in step 1)  and adds (on a separate line) "It's going to be a great day!"

File.open('project-3.txt', 'a') { |text| text.write("It's going to be a great day!") }

# 4. Your script should create a new directory called "my_new_directory"
# Dir.mkdir("my_new_directory")

# 5. Your script should check to see if a file exists and if it does print "Yes, this file exists!"

if File.file?("project-3.txt")
	puts "yes, this file exists!"

else
	puts "The file does not exist"
end
# Testing github....
