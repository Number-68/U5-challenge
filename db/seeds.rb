
# looping 676 times, filling the Product table with faker data.

676.times do 
    Product.create!(
        title: Faker::Commerce.product_name,
        price: Faker::Commerce.price(range:5.0..5000.0),
        stock_quantity: Faker::Number.between(from: 1, to: 1000)
    )
end


