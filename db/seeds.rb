<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=======
  50.times do |n|
    Member.create!(
      last_name: "テスト#{n + 1}号",
      first_name: "太郎",
      last_name_kana: "テスト",
      first_name_kana: "タロウ",
      postal_code: "1234567",
      address: "長野県カフェ市#{n + 1}区",
      telephone_number: "01234567890",
      email: "tester#{n + 1}@test.com",
      password: "111111",
    )
  end
>>>>>>> 93cf7113f9c4f8ca705a45e7b2bdf4b77cfef0f5
