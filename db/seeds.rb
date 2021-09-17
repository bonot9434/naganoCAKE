# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Member.create!(
  last_name: "test",
  first_name: "aki",
  last_name_kana: "てすと",
  first_name_kana: "あき",
  postal_code: "1234567",
  address: "長野県カフェ市",
  telephone_number: "01234567890",
  email: "test-aki@test.com",
  password: "111111",
  )