Booking.destroy_all
Project.destroy_all
User.destroy_all
Category.destroy_all

# CATEGORIES

environment = Category.new(name: "Environment")
environment.save

education = Category.new(name: "Education")
education.save

animals = Category.new(name: "Animals")
animals.save

health = Category.new(name: "Health")
health.save

construction = Category.new(name: "Construction")
construction.save

other = Category.new(name: "Other")
other.save


# USERS

url_user1 = "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5d43ec18ec2cf6ff854513b9e8395c1e&auto=format&fit=crop&w=1650&q=80"
url_user2 = "https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ad57f7ca5832f3f72ee2c1c243c72f5c&auto=format&fit=crop&w=1650&q=80"
url_user3 = "https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0cbdfcb45b7eab2f0f759acafca82092&auto=format&fit=crop&w=1534&q=80"

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
  password: "123456"
  )
user2.remote_profile_picture_url = url_user2
user2.save

user3 = User.new(
  first_name: "John",
  last_name: "Price",
  email: "john@gmail.com",
  password: "123456"
  )
user3.remote_profile_picture_url = url_user3
user3.save

# PROJECTS

url_forest = "https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d4147a2e4e3f79299e2f0c92b13db9ee&auto=format&fit=crop&w=934&q=80"
url_kids = "https://images.unsplash.com/photo-1511949860663-92c5c57d48a7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=97b08b2596c6a45168b3ae9e766010e0&auto=format&fit=crop&w=1650&q=80"
url_animal = "https://images.unsplash.com/photo-1503066211613-c17ebc9daef0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=db24a634bad2f3b05cfe733c26e7680f&auto=format&fit=crop&w=1650&q=80"
url_volunteer = "https://images.unsplash.com/photo-1525251007361-ea7caef5272e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=772c6740d9fa58b27915e09074885497&auto=format&fit=crop&w=879&q=80"
url_school = "https://images.unsplash.com/photo-1495727034151-8fdc73e332a8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3dcf02e95892597d2f306135a2cbf032&auto=format&fit=crop&w=1045&q=80"
url_giraffe = "https://images.unsplash.com/photo-1520124442480-b5c60b0f80c2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bc7af07cae71cfe0f6224add62b3d743&auto=format&fit=crop&w=701&q=80"
url_health = "https://images.unsplash.com/photo-1519781542704-957ff19eff00?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c351475860e8248dcd543ebbba1aa24f&auto=format&fit=crop&w=1146&q=80"
url_allotment = "https://images.unsplash.com/photo-1461175827210-5ceac3e39dd2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f7681cab4fa60e7f4752608cd19cba56&auto=format&fit=crop&w=1191&q=80"

forest_project = Project.new(
  title: "Forest Project",
  description: "This is a super cool forest project in the forest",
  full_description: "Deforestation is one of the greatest causes of climate change and so we believe that this project is extremely important.
   We are looking for passionate volunteers who will be able to plant trees and run educational workshops in the local town.
   Volunteers will be hosted in a small cottage and all food and equipment will be provided. Ideally we would like people who are able to stay
   for a few months, though we are happy to cater for shorter visits depending on availability. Thank you so much for considering our project
    and we hope to meet you soon! Do get in touch if you have any questions before deciding to book.",
  location: "Manaus, Brazil",
  category: environment,
  capacity: 4,
  requirement: "No experience needed but you will need to be fit for manual labour!",
  user: user1
  )
forest_project.remote_photo_url = url_forest
forest_project.save

kids_project = Project.new(
  title: "Kids Project",
  description: "This is a super cool kids project with kids",
  full_description: "We believe the children are our future, teach them well and let them lead the way. Show them all the beauty they posses
  inside. Give them a sense of pride, to make it easier. Let the children's laughter, remind us how we used to be. I decided long ago, never
  to walk in anyone's shadow. If I fail, if I succeed, at least I'll live as I believe - no matter what they take from me they can't take away
  my dignity. Because the greatest love of all is happening to me! I hope that you choose to join my project.",
  location: "Kathmandu, Nepal",
  category: education,
  capacity: 2,
  requirement: "You will need to have some experience working with children.",
  user: user2
  )
kids_project.remote_photo_url = url_kids
kids_project.save

animal_project = Project.new(
  title: "Animal Project",
  description: "This is a super cool animal project with animals",
  full_description: "I hear the drums echoing tonight but she hears only whispers of some quiet conversation. She's coming in, 12:30 flight
  The moonlit wings reflect the stars that guide me towards salvation. I stopped an old man along the way, hoping to find some long forgotten
  words or ancient melodies. He turned to me as if to say, Hurry boy, it's waiting there for you. It's gonna take a lot to take me away from you,
  there's nothing that a hundred men or more could ever do, I bless the rains down in Africa, gonna take some time to do the things we never had.
  I hope that you agree and will consider volunteering for my project!",
  location: "Johannesburg, South Africa",
  category: animals,
  capacity: 4,
  requirement: "You will need to have some experience working with animals.",
  user: user2
  )
animal_project.remote_photo_url = url_animal
animal_project.save

volunteer_project = Project.new(
  title: "Volunteer Project",
  description: "This is a super cool volunteering project",
  full_description: "Everyone likes to Volunteer for stuff! You should totally get involved in my awesome project! We need people just like you
  to join us and help us out - with your help we can change the world! You will be staying in our home and helping us out - don't worry! We will
  provide all of your food and drink.",
  location: "Paddington, London",
  category: other,
  capacity: 4,
  requirement: "No experience needed- just enthusiasm!",
  user: user3
  )
volunteer_project.remote_photo_url = url_volunteer
volunteer_project.save

school_project = Project.new(
  title: "School Project",
  description: "Teach Latin to local kids!",
  full_description: "Everyone likes to Volunteer for stuff! You should totally get involved in my awesome project! We need people just like you
  to join us and help us out - with your help we can change the world! You will be staying in our home and helping us out - don't worry! We will
  provide all of your food and drink.",
  location: "Bath, Somerset",
  category: education,
  capacity: 4,
  requirement: "You will need to have some teaching experience",
  user: user3
  )
school_project.remote_photo_url = url_school
school_project.save

giraffe_project = Project.new(
  title: "Giraffe Sanctuary",
  description: "Help to look after giraffes!",
  full_description: "Everyone likes to Volunteer for stuff! You should totally get involved in my awesome project! We need people just like you
  to join us and help us out - with your help we can change the world! You will be staying in our home and helping us out - don't worry! We will
  provide all of your food and drink.",
  location: "Kenya",
  category: other,
  capacity: 4,
  requirement: "No experience needed- just enthusiasm!",
  user: user1
  )
giraffe_project.remote_photo_url = url_giraffe
giraffe_project.save

health_project = Project.new(
  title: "Hospital project",
  description: "Volunteers needed!",
  full_description: "Everyone likes to Volunteer for stuff! You should totally get involved in my awesome project! We need people just like you
  to join us and help us out - with your help we can change the world! You will be staying in our home and helping us out - don't worry! We will
  provide all of your food and drink.",
  location: "Leeds",
  category: other,
  capacity: 4,
  requirement: "Some medical experience is required",
  user: user1
  )
health_project.remote_photo_url = url_health
health_project.save

allotment_project = Project.new(
  title: "Gardening project",
  description: "Help us to grow vegetables!",
  full_description: "Everyone likes to Volunteer for stuff! You should totally get involved in my awesome project! We need people just like you
  to join us and help us out - with your help we can change the world! You will be staying in our home and helping us out - don't worry! We will
  provide all of your food and drink.",
  location: "Epsom",
  category: other,
  capacity: 4,
  requirement: "No experience needed",
  user: user3
  )
allotment_project.remote_photo_url = url_allotment
allotment_project.save

# BOOKINGS

booking1 = Booking.new(
  start_date: "15 Aug 2018",
  end_date: "16 Aug 2018",
  user: user1,
  project: kids_project,
  )
booking1.save

booking2 = Booking.new(
  start_date: "01 Oct 2018",
  end_date: "30 Oct 2018",
  user: user1,
  project: animal_project,
  )
booking2.save
