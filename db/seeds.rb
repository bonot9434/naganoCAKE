# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




20.times do |n|
Product.create!(
  genre_id: 1,
  name: "テスト#{n + 1}号",
  introduction: "テスト用データだよ。",
  price: "500+ #{100*n}_to.i",
  is_active: true,
 )
  end

10.times do |n|
Product.create!(
  genre_id: 2,
  name: "テスト#{n + 1}号",
  introduction: "テスト用データだよ。",
  price: "500+ #{100*n}_to.i",
  is_active: true,
 )
  end

10.times do |n|
Product.create!(
  genre_id: 3,
  name: "テスト#{n + 1}号",
  introduction: "テスト用データだよ。",
  price: "500"+ "#{100*n}_to.i",
  is_active: false,
 )
  end

10.times do |n|
Product.create!(
  genre_id: 4,
  name: "テスト#{n + 1}号",
  introduction: "テスト用データだよ。",
  price: "500+ #{100*n}_to.i",
  is_active: false,
 )
  end