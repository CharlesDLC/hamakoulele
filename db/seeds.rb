# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Hamac.destroy_all
User.destroy_all
# users
momo = User.create!(first_name: "momo", last_name: "Batman", address: "Angers", description: "XX", email: "momo@gmail.com", password: "123456", password_confirmation: "123456")
john = User.create!(first_name: "john", last_name: "Mckaine", address: "Dallas", description: "M&S", email: "john@gmail.com", password: "123456", password_confirmation: "123456")
lee = User.create!(first_name: "Lee", last_name: "Sue", address: "Paris", description: "LA", email: "lee@gmail.com", password: "123456", password_confirmation: "123456")
chuck = User.create!(first_name: "chuck", last_name: "Norris", address: "Houston", description: "Texas", email: "chuck@gmail.com", password: "123456", password_confirmation: "123456")
larry = User.create!(first_name: "larry", last_name: "Bird", address: "NY", description: "P&L", email: "larry@gmail.com", password: "123456", password_confirmation: "123456")
charles = User.create!(first_name: "charles", last_name: "Lacoche", address: "Paris", description: "Businessman", email: "charles@gmail.com", password: "123456", password_confirmation: "123456")
tony = User.create!(first_name: "tony", last_name: "Parker", address: "lyon", description: "Mummy", email: "tony@gmail.com", password: "123456", password_confirmation: "123456")
kylian = User.create!(first_name: "kylian", last_name: "Mbappé", address: "Monaco", description: "footballer", email: "kylian@gmail.com", password: "123456", password_confirmation: "123456")
lebron = User.create!(first_name: "lebron", last_name: "James", address: "Cleveland", description: "?", email: "lebron@gmail.com", password: "123456", password_confirmation: "123456")
michael = User.create!(first_name: "michael", last_name: "Batman", address: "Chicago", description: "XX", email: "michael@gmail.com", password: "123456", password_confirmation: "123456")
david = User.create!(first_name: "david", last_name: "Trezeguooool", address: "Buesnos Aires", description: "O Rei David", email: "david@gmail.com", password: "123456", password_confirmation: "123456")
jody = User.create!(first_name: "jody", last_name: "Vanden", address: "Melburn", description: "Surf", email: "laurent@gmail.com", password: "123456", password_confirmation: "123456")
x = User.create!(first_name: "X", last_name: "IceCube", address: "Berlin", description: "NON", email: "jody@gmail.com", password: "123456", password_confirmation: "123456")

nom_hamac = [
              'hamac au bord de plage',
              'hamac au bord d\'une riviere',
              'hamac avec vue sur un volcan',
              'hamac confortable avec vue',
              'hamac petit prix',
              'hamac tip top location',
              'hamac d\'epoque',
              'hamac avec moustiquaire',
              'hamac prevu pour deux',
              'hamac pour amoureux'
        ]

# hamac
User.all.each do |user|
  5.times do |index|
    hamac = Hamac.create! \
      name: nom_hamac.sample,
      photo: File.new(Rails.root.join("db/fixtures/images/hamacs/#{index}.jpg")),
      user: user,
      address: Faker::Address.city,
      price: Faker::Number.between(1, 10),
      description: Faker::LordOfTheRings.character
    3.times do
      Booking.create! \
        user: User.all.sample,
        hamac: hamac,
        status: %w(cancelled pending accepted refused).sample
    end
    puts "#{index +1} hamac créé "
  end
end




# Hamac.create!(user: momo, description: "", address: "Nantes" , price: "25")
# Hamac.create!(user: momo, description: "", address: , price: "20")
# Hamac.create!(user: momo, description: "", address: , price: "30")
# Hamac.create!(user: momo, description: "", address: , price: "22")
# Hamac.create!(user: momo, description: "", address: , price: "27")
# Hamac.create!(user: momo, description: "", address: , price: "28")
# Hamac.create!(user: momo, description: "", address: , price: "23")
# Hamac.create!(user: momo, description: "", address: , price: "25")
# Hamac.create!(user: momo, description: "", address: , price: "25")
