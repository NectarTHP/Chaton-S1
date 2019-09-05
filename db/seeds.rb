require 'faker'

=begin
    
rescue => exception
    
end

#seed for cart testing
Product.create(
 picture: Faker::Code.npi,
 price: rand(1..100),
 description: Faker::Lorem.sentence,
 name: "product cart tester"
)
user = User.create!(name: "cart tester", email: "cart2322@test.com", password: "azerty")
cart = Cart.create!(user_id: user.id)
LineItem.create!(cart_id: cart.id, product_id: 183)


    
rescue => exception
    
end

=end

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


20.times do
    Cart.create(
        # user: rand(1..10)
    )
end
puts "created 10 carts" 

20.times do
    Product.create(
        picture: Faker::Code.npi,
        price: rand(1..100),
        description: Faker::Lorem.sentence,
        name: Faker::Food.dish
    )
 end
 puts "created 10 products"

 20.times do
     Order.create(
        user: @user,
         description: Faker::Lorem.sentence,
         pay_method: rand(1..3)
     )
 end
 puts "created 10 orders"

 20.times do
    LineItem.create(
        quantity: rand(1..10),
        product: @product,
        cart: @cart,
        order_id: @order,
    )
end
puts "created 10 line items" 






