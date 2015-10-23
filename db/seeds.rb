# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(Marketing Programming Education Cooking Business).each do |job_name|
  Category.create!(name: job_name)
end
20.times do
  Job.create!(
    title: Faker::Name.title,
    description: Faker::Lorem.paragraph,
    company: Faker::Company.name,
    url: Faker::Internet.url,
    category_id: Category.all.sample.id
    )
end
