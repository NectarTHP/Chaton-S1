<<<<<<< HEAD

Product.delete_all
Order.delete_all
=======
require 'faker'

User.destroy_all
Product.destroy_all
Order.destroy_all
LineItem.destroy_all
Order.destroy_all
Cart.destroy_all
    


20.times do 
    User.create!(email: Faker::Internet.email, password: 123456, name: Faker::Name.name)
end
puts "10 users were created"

>>>>>>> delivery

20.times do
    Cart.create(
        # user: rand(1..10)
    )
end
puts "created 10 carts" 

20.times do
    Product.create(
<<<<<<< HEAD
        picture:Faker::LoremPixel.image(size: "100x100", is_gray: false, category: 'cats'),
        price:Faker::Number.number(digits: 1),
        description: Faker::Lorem.paragraph,
=======
        picture: Faker::Code.npi,
        price: rand(1..100),
        description: Faker::Lorem.sentence,
>>>>>>> delivery
        name: Faker::Food.dish
    )
 end
 puts "created 10 products"

 20.times do
     Order.create(
        #  user: rand(1..10),
         description: Faker::Lorem.sentence,
         pay_method: rand(1..3)
     )
 end
 puts "created 10 orders"

 20.times do
    LineItem.create(
        quantity: rand(1..10),
        # product: rand(1..10),
        # cart: rand(1..10),
        order_id: rand(1..10),
    )
end
puts "created 10 line items" 





