require 'faker'

2.times do
  User.create(
    name: Faker::Name.name,
    password: Faker::Internet.password,
  )
end

2.times do
  Coin.create(
    content: Faker::Company.bs,
    user_id: 1 + rand(User.all.length)
  )
end
