# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Admin.create!(
#   email: "test_CAKE@gmail.com",
#   password: "111111"
#   )
  
# 25.times do |n|
#   Member.create!(
#     last_name: "テスト#{n + 1}号",
#     first_name: "太郎",
#     last_name_kana: "テスト",
#     first_name_kana: "タロウ",
#     postal_code: "1234567",
#     address: "長野県カフェ市#{n + 1}区",
#     telephone_number: "01234567890",
#     email: "test#{n + 1}@test.com",
#     password: "111111",
#     is_deleted: true
#   )
# end
# 25.times do |n|
#   Member.create!(
#     last_name: "テスト#{n + n}号",
#     first_name: "太郎",
#     last_name_kana: "テスト",
#     first_name_kana: "タロウ",
#     postal_code: "1234567",
#     address: "長野県カフェ市#{n + n}区",
#     telephone_number: "01234567890",
#     email: "tester#{n + n}@test.com",
#     password: "111111",
#     is_deleted: false
#   )
# end
# Genre.create!(
#     name: "ケーキ"
# )
# 25.times do |n|
#   Product.create!(
#     genre_id: 1,
#     name: "イエローケーキ#{2*n}号",
#     introduction: "黄色いケーキだよ",
#     price: 5000 + rand(1000),
#     is_active: true
#   )
# end
# 25.times do |n|
#   Product.create!(
#     genre_id: 1,
#     name: "イエローケーキ#{2*n - 1}号",
#     introduction: "黄色いケーキだよ",
#     price: 5000 + rand(1000),
#     is_active: false
#   )
# end
# 40.times do |n|
#   Order.create!(
#     member_id: n+1,
#     postal_code: "1234567",
#     address: "長野県カフェ市#{n + 1}区",
#     name: "テスト#{n + 1}号太郎",
#     potage: 800,
#     total_price: 6000,
#   )
# end
# 40.times do |n|
#   OrderProduct.create!(
#     product_id: rand(1..49),
#     order_id: n+1,
#     subtotal_price: 5200,
#     quantity: 1
#   )
# end
