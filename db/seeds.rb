
Product.delete_all
Order.delete_all

10.times do
    Product.create(
        picture:Faker::LoremPixel.image(size: "100x100", is_gray: false, category: 'cats'),
        price:Faker::Number.number(digits: 1),
        description: Faker::Lorem.paragraph,
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

