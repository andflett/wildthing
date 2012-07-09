# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
  { title: 'Hi-Tech Nature' }, 
  { title: 'Low-fi' }
])

AdminUser.create([
  {
    email: 'hello@goodfornothing.com',
    password: 'p1pel1ne',
    password_confirmation: 'p1pel1ne',
  }
])
