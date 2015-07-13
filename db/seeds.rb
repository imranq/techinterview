# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

admin_user = User.create(email: "imranq02@gmail.com", password: "zeeshan", password_confirmation: "zeeshan", admin: true)

# csv to db
# CSV.foreach('problems.csv', :header => true) do |row|
# 	row_collapse = row[0..2] + row[3..-1].join(',')
# 	Problem.create!(row_collapse.to_hash)
# end



