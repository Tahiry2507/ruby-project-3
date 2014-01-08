require 'csv'

# Create a ruby script that does the following:
# 1. Writes the following to a file:
	# Make, Model
	# “Chevrolet”,”Malibu”
	# “Ford”,”Mustang”
	# “Ford”, “Taurus”
	# “Chevrolet”, “Cobalt”


File.write('makes_models.csv', "Make, Model")
File.open('makes_models.csv', 'a') { 
		|text| text.write("\nChevrolet, Malibu \nFord, Mustang \nFord, Taurus \nChevrolet, Cobalt")
	}
	
# 2. Reads the file and prints the following to the screen:
# “Make: [MAKE_NAME] Model: [MODEL]” (replace MAKE_NAME and MODEL with actual content)

CSV.open('makes_models.csv', 'r').each do |make, model|
	if make != "Make" && model != "Model"
		puts "\"Make:#{make} Model:#{model}\""
	end
end

# 3. Your scripts should then print out how many lines it processed. This value should come from your program and not "hard coded"

File.open('makes_models.csv') { |line| @count = line.read.count("\n")}
puts "line processed: #{@count}"

# 4. Your script should then print out how large the file was that you processed

size = File.size("makes_models.csv")
puts "File Size: #{size} Bytes"
