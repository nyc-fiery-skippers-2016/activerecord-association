Person.destroy_all
Job.destroy_all
Hobby.destroy_all

Person.create! [
  { first_name: "Kalman", last_name: "Smith" },
  { first_name: "John", last_name: "Whatever" },
  { first_name: "Michael", last_name: "Smith" },
  { first_name: "Josh", last_name: "Oreck"},
  { first_name: "John", last_name: "Smith"},
  { first_name: "Bill", last_name: "Gates"},
  { first_name: "LeBron", last_name: "James"}
]


hobby = Hobby.create(title: 'knitting')
Person.find_by!(first_name: "Kalman").hobbies << hobby
Person.find_by!(first_name: "Kalman").hobbies.create(title: 'reading')
Person.find_by!(first_name: "John", last_name: "Whatever").hobbies.create(title: 'cooking')
Person.find_by!(first_name: "Michael").hobbies.create(title: 'fishing')
Person.find_by!(first_name: "Josh").hobbies << hobby
Person.find_by!(first_name: "John", last_name: "Smith").hobbies.create(title: 'walking')
Person.find_by!(first_name: "Bill").hobbies.create(title: 'dancing')
Person.find_by!(first_name: "LeBron").hobbies.create(title: 'hiking')

# Person.first.jobs.create! [
#   { title: "Developer"},
#   { title: "DevOPS"}
# ]
#
# Person.last.jobs.create! [
#   { title: "Sr. Developer"},
#   { title: "Sr. Developer"}
# ]
#
#
Person.first.jobs.create! [
  { title: "Developer", company: "MS", position_id: "#1234" },
  { title: "Developer", company: "MS", position_id: "#1235" }
]

Person.last.jobs.create! [
  { title: "Sr. Developer", company: "MS", position_id: "#5234" },
  { title: "Sr. Developer", company: "MS", position_id: "#5235" }
]
