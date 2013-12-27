require 'csv'

File.write('makes_models.csv', "Make, Model")
File.open('makes_models.csv', 'a') { 
		|text| text.write("\nChevrolet, Malibu \nFord, Mustang \nFord, Taurus \nChevrolet, Cobalt \nRenault, Megan")
	}

CSV.open('makes_models.csv', 'r'). each do |make, model|
	if make != "Make" && model != "Model"
		puts "Make: #{make} Model: #{model}"
	end
end

File.open('makes_models.csv') { |line| @count = line.read.count("\n")}
puts "line processed: #{@count}"

size = File.size("makes_models.csv")
puts "File Size: #{size} Bytes"