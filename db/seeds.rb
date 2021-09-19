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