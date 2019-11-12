User.create!(
uid:  "Example001",
name:  "Example User",
division: "Developement",
team: "Team1",
admin: "1",
email: "example@railstutorial.org",
password:              "foobar",
password_confirmation: "foobar")

99.times do |n|
  uid  = "uid#{n+1}"
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  division = "division-#{n+1}"
  team = "team-#{n+1}"
  password = "password"
  User.create!(
uid: uid,
name:  name,
email: email,
division: division,
team: team,
password:              password,
password_confirmation: password)
end