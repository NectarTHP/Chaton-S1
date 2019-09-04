
7.times do |n|
    name  = Faker::Name.name
    email = "example-#{n + 1}@railstutorial.org"
    password = 'password'
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password)
end
   

 require 'table_print'

10.times do
    Product.create(
        picture: Faker::Code.npi,
        price: rand(1..100),
        description: Faker::Lorem.words(number: 5),
        name: Faker::Food.dish
    )
    puts "created 10 products"
end
 


10.times do
    Order.create(
        user_id: rand(1..10),
        description: Faker::Lorem.words(number: 5),
        pay_method: rand(1..3)
       
    )
    puts "created 10 orders"
end
