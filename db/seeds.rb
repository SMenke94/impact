User.destroy_all
Project.destroy_all

url_user1 = "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5d43ec18ec2cf6ff854513b9e8395c1e&auto=format&fit=crop&w=1650&q=80"
url_user2 = "https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ad57f7ca5832f3f72ee2c1c243c72f5c&auto=format&fit=crop&w=1650&q=80"

user1 = User.new(
  first_name: "Catherine",
  last_name: "Miller",
  email: "cathy@gmail.com",
  password: "123456"
  )
user1.remote_profile_picture_url = url_user1
user1.save

user2 = User.new(
  first_name: "Jessica",
  last_name: "Price",
  email: "jessica@gmail.com",
  password: "abcdef"
  )
user2.remote_profile_picture_url = url_user2
user2.save

url_forest = "https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d4147a2e4e3f79299e2f0c92b13db9ee&auto=format&fit=crop&w=934&q=80"
url_kids = "https://images.unsplash.com/photo-1511949860663-92c5c57d48a7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=97b08b2596c6a45168b3ae9e766010e0&auto=format&fit=crop&w=1650&q=80"
url_animal = "https://images.unsplash.com/photo-1503066211613-c17ebc9daef0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=db24a634bad2f3b05cfe733c26e7680f&auto=format&fit=crop&w=1650&q=80"

forest_project = Project.new(
  title: "Forest Project",
  description: "This is a super cool forest project in the forest",
  location: "Amazon",
  category: "Environment",
  capacity: 4,
  user: user1
  )
forest_project.remote_photo_url = url_forest
forest_project.save

kids_project = Project.new(
  title: "Kids Project",
  description: "This is a super cool kids project with kids",
  location: "Nepal",
  category: "Education",
  capacity: 2,
  user: user2
  )
kids_project.remote_photo_url = url_kids
kids_project.save

animal_project = Project.new(
  title: "Animal Project",
  description: "This is a super cool animal project with animals",
  location: "Africa",
  category: "Animals",
  capacity: 4,
  user: user2
  )
animal_project.remote_photo_url = url_animal
animal_project.save
