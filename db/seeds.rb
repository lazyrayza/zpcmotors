puts "Destroying all Makes"
Make.destroy_all
puts "Destroyed all Makes"

puts "Destroying all Models"
Model.destroy_all
puts "Destroyed all Models"

puts "Destroying all Cars"
Car.destroy_all
puts "Destroyed all Cars"

puts "Creating Makes"
toyota = Make.create!(
  name: "Toyota",
  )
nissan = Make.create!(
  name: "Nissan",
  )
honda = Make.create!(
  name: "Honda",
  )
Merc = Make.create!(
  name: "Mercedes",
  )
bmw = Make.create!(
  name: "BMW",
  )
mitsubishi = Make.create!(
  name: "Mitsubishi",
  )
mazda = Make.create!(
  name: "MAzda",
  )
puts "Done creating Makes"

puts "Creating Toyota Models"
prius = Model.create!(
  name: "Prius",
  make_id: 1
  )

chr = Model.create!(
  name: "CH-R",
  make_id: 1
  )
vitz = Model.create!(
  name: "Vitz",
  make_id: 1
  )
rav4 = Model.create!(
  name: "Rav-4",
  make_id: 1
  )
corolla = Model.create!(
  name: "Corolla",
  make_id: 1
  )
landcruiser = Model.create!(
  name: "Landcruiser",
  make_id: 1
  )

puts "Done Making Toyota Models"

puts "Creating Nissan Models"

march = Model.create!(
  name: "March",
  make_id: 2
  )
duke = Model.create!(
  name: "Duke",
  make_id: 2
  )
xtrail = Model.create!(
  name: "X-trail",
  make_id: 2
  )
leaf = Model.create!(
  name: "Leaf",
  make_id: 2
  )
qashqai = Model.create!(
  name: "Qashqai",
  make_id: 2
  )

puts "Done Creating Nissan Models"

puts "Creating Honda Models"


fit = Model.create!(
  name: "Fit",
  make_id: 3
  )
crv = Model.create!(
  name: "CR-V",
  make_id: 3
  )
vezel = Model.create!(
  name: "Vezel",
  make_id: 3
  )
accrod = Model.create!(
  name: "Accord",
  make_id: 3
  )
civic = Model.create!(
  name: "Civic",
  make_id: 3
  )

puts "Done Creating Honda Models"

puts "Creating Mercedes Models"


aclass = Model.create!(
  name: "A class",
  make_id: 4
  )
bclass = Model.create!(
  name: "B class",
  make_id: 4
  )
cclass = Model.create!(
  name: "C class",
  make_id: 4
  )

puts "Done Creating Mercedes Models"

puts "Creating BMW Models"

oneseries = Model.create!(
  name: "1 series",
  make_id: 5
  )
threeseries = Model.create!(
  name: "1 series",
  make_id: 5
  )
xmodels = Model.create!(
  name: "X models",
  make_id: 5
  )

puts "Done Creating BMW Models"

puts "Creating Mitsubishi Models"


outlander = Model.create!(
  name: "Outlander",
  make_id: 6
  )

puts "Done Creating Mitsubishi Models"

puts "Creating Mazda Models"


mazda3 = Model.create!(
  name: "Mazda3",
  make_id: 7
  )

puts "Done Creating Mazda Models"





















