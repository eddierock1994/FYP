require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file = Dir.glob("#{Rails.root}/private/*.csv")
csv_text = File.read(file[0])
csv = CSV.parse(csv_text, headers: false)
csv.each do |row|
	r_name=row[0]
	r_dishes=row[1..10]
	r = Restaurant.create(name: r_name)
	print r_name
	r_id = r.id
	r_dishes.each_with_index do |dish,i|
		rd = Dish.create(restaurant_id: r_id, rank: i+1, name: dish)
		print rd
		# print dish
		# print i+1
	end
end
