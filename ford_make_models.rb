# require 'rubygems'
# require 'fastercsv'

require 'csv'

fords = [{ :make => "Ford", :model => "Mustang"}, { :make => "Ford", :model => "Taurus"}]

File.write('ford.csv', "Make, Model\n")
CSV.open("ford.csv", "a") do |csv|
	fords.each do |car|
		csv << [car[:make], car[:model]]
	end
end

puts fords