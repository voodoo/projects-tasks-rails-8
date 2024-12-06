# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.create!(email_address: 'admin@example.com', password: 'password', password_confirmation: 'password')

project = user.projects.create!(name: 'Lawn Care')
    project.tasks.create!(name: 'Weed the garden')
    project.tasks.create!(name: 'Mow the lawn')
project = user.projects.create!(name: 'Self care')
    project.tasks.create!(name: 'Meditate')
    project.tasks.create!(name: 'Rub one out')


project = user.projects.create!(name: 'Find a job')
    project.tasks.create!(name: 'USA Jobs')
    project.tasks.create!(name: 'Hacker news')