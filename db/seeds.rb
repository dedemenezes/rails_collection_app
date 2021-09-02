puts "Cleaning DB"

User.destroy_all
Album.destroy_all

puts "DB Clean\nzo/"

puts "Creating users"
User.create!(admin:true, username: 'admin', email:'admin@user.com', password: 123456, full_name:'Admin User')
User.create!(username: 'basic', email: 'basic@user.com', password: 123456, full_name: 'Basic User')

puts "#{User.count} users created"