require 'csv'

hash = {}

File.open('makes_models.csv') do |fp|
	fp.each do |line|
		key, value = line.chomp.split(",")
		if key != "Make" && value != "Model"
			hash.compare_by_identity
			hash[key] = value
		end
	end
end

# puts hash

hash.delete_if { |key, value| key == "Chevrolet"}
# puts hash

File.write('fords.csv', "Make, Model\n")

CSV.open('fords.csv', "a") do |csv|
	hash.each do |key, value|
		csv << [key, value]
	end
end