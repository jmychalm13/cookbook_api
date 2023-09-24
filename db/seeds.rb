puts "Seeding started"

Recipe.create!([
  {user_id: 1, name: "Ice", chef: "Katherine Evans", prep_time: 100, cook_time: 90, temperature: 0},
  {user_id: 1, name: "Salad", chef: "Katherine Evans", prep_time: 25, cook_time: 45, temperature: 40},
  {user_id: 1, name: "Empty Sandwich", chef: "Jay Wengrow", prep_time: 72, cook_time: 10, temperature: 68},
  {user_id: 1, name: "Mud Pie", chef: "Mark Richardson", prep_time: 84, cook_time: 65, temperature: 350},
  {user_id: 1 ,name: "Corn on the cob", chef: "Cornelius Vanderbilt", prep_time: 22, cook_time: 35, temperature: 100},
  {user_id: 1, name: "Raw Eggs", chef: "Laura Parsley", prep_time: 1, cook_time: 0, temperature: 40},
  {user_id: 1, name: "Smoothie", chef: "Katherine Evans", prep_time: 50, cook_time: 10, temperature: 20},
  {user_id: 1, name: "Cookies", chef: "Katherine Evans", prep_time: 123, cook_time: 50, temperature: 425},
  {user_id: 1, name: "Pizza", chef: "Katherine Evans", prep_time: 23423, cook_time: 450, temperature: 400},
])

puts "Seeding completed : )"
