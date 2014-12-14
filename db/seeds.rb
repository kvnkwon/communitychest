require 'faker'

30.times do
  User.create(
    name: Faker::Name.name,
    password: Faker::Internet.password,
  )
end

30.times do
  Coin.create(
    content: Faker::Company.bs,
    user_id: 1 + rand(User.all.length)
  )
end
