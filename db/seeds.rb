# Delete all products and users
Product.delete_all
User.delete_all
puts 'Deleted all products and users'

# Create Users
3.times do
  user = User.create! email: Faker::Internet.email, password: 'locadex1234'
  puts "Created a new user: #{user.email}"

  # Create 2 Products per user
  2.times do
    product = Product.create!(title: Faker::Commerce.product_name, price: rand(1.0..100.0), published: true, user_id: user.id)
    puts "Created a brand new product: #{product.title}"
  end
end

puts "Created #{User.count} users, #{Product.count} products"
