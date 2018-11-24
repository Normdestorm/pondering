# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.create(job_title: "Software Engineer", location: "Cork", description: "Rails engineer", preferred_experience: "ten years", salary: 100000)
Job.create(job_title: "IT Consultant", location: "Kildare", description: "Project Manager large site", preferred_experience: "four years", salary: 100000)
Job.create(job_title: "Software Engineer", location: "Dublin", description: "Ruby engineer", preferred_experience: "5 years years", salary: 150000)