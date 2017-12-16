# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|

	User.create(name: "Usuario #{i +1}", photo: "https://4.bp.blogspot.com/-4pfIER9JeTM/WZcIfX58pxI/AAAAAAAAOD4/-pDGUgsNzasDVfdBQG5iiB7qM3vZ5WamwCLcBGAs/s1600/dragon-ball-super-goku.jpg")
	Task.create(title: "Task #{i + 1}",photo: "http://bigfenomeno.com/wp-content/uploads/2015/09/post_chile_terremoto_trago2.jpg", description: "Tomar el terremoto" )
	
end