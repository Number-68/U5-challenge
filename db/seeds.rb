

require "csv"




# load csv
csv_file = Rails.root.join("db/products.csv") 

csv_data = File.read(csv_file)




# parse data from csv
products = CSV.parse(csv_data, headers: true)


# loop through each row. 

products.each do |product|
    name = product["name"]
    price = product["price"]
    description = product["description"]
    stock_quantity = product["stock quantity"]
    
    category_name = product["category"]

    #puts "DESCRIPTION RAW VALUE: #{description.inspect}"

    # find or create category
    category = Category.find_or_create_by!(name: category_name)


    #create product
    Product.create!( 
        title: name, 
        price: price, 
        stock_quantity: stock_quantity, 
        description: description,
        category: category 
    )

end
