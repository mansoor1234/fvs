# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# creating roles
["admin", "manager", "staff"].each do |role|
	Role.find_or_create_by(name: role)
end

#creating admin
User.find_or_create_by(first_name: "Haroon", last_name: "Rana", email: "haroonrana224@gmail.com") do |admin|
	admin.password = "123456"
	admin.confirmed_at = Time.now
	admin.role_id = 1
end