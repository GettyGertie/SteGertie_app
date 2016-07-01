User.create!(username: "stela gertie",
             email: "getty@gmail.com",
             password: "foobar",
password_confirmation: "foobar",
created_at: Time.zone.now)

14.times do |n|
  username = Faker::Name.name
  email = "getty-#{n+1}@gmail.com"
  password = "youuu"
  User.create!(username: username,
               email: email,
               password: password,
               password_confirmation: password,
  created_at: Time.zone.now)
end
