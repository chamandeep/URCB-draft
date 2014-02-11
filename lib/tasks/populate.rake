namespace :db do
desc "Fill database with sample data"
task populate: :environment do
make_users
make_friendships
end
end
def make_users
admin = User.create!(firstName:     "Example User",
lastName: "surname",
email: "example@railstutorial.org",
password: "foobar",
admin: true)
99.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password  = "password"
User.create!(name:     name,
email:    email,
password: password)
end
end

