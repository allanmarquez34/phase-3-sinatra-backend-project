puts "🌱 Seeding spices..."


puts "creating activities"
a1= Activity.create(location: , title: , description: ,)
a2= Activity.create(location: , title: , description: ,)
a3= Activity.create(location: , title: , description: ,)
a4= Activity.create(location: , title: , description: ,)
a5= Activity.create(location: , title: , description: ,)
a6= Activity.create(location: , title: , description: ,)
a7= Activity.create(location: , title: , description: ,)
a8= Activity.create(location: , title: , description: ,)
a9= Activity.create(location: , title: , description: ,)

puts "creating reviews"
b1 = Review.create(content: , rating: ,activity_id: a1.id)
b2 = Review.create(content: , rating: ,activity_id: a1.id)
b3 = Review.create(content: , rating: ,activity_id: a1.id)
b4 = Review.create(content: , rating: ,activity_id: a1.id)
b5 = Review.create(content: , rating: ,activity_id: a1.id)
b6 = Review.create(content: , rating: ,activity_id: a1.id)
b7 = Review.create(content: , rating: ,activity_id: a1.id)
b8 = Review.create(content: , rating: ,activity_id: a1.id)
b9 = Review.create(content: , rating: ,activity_id: a1.id)


puts "✅ Done seeding!"
