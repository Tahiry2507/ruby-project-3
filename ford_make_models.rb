# require 'rubygems'
# require 'fastercsv'
require 'csv'

# 1. Copy your script from Part 2 and name it "ford_make_models.rb"
# 2. Modify your scripts to store your make/models in a hash

fords = [{ :make => "Ford", :model => "Mustang"}, { :make => "Ford", :model => "Taurus"}]

# 3. Remove any items from the hash that are not a "Ford" make.
# 4. Create a file called fords.csv and write the data from your Ford only hash

File.write('ford.csv', "Make, Model\n")
CSV.open("ford.csv", "a") do |csv|
	fords.each do |car|
		csv << [car[:make], car[:model]]
	end
end

puts fords
