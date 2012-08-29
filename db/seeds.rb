# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
  { title: 'Wild Thing' }
])

AdminUser.create([
  {
    email: 'hello@goodfornothing.com',
    password: 'p1pel1ne',
    password_confirmation: 'p1pel1ne',
  }
])

partners = Partner.create([
  { 
    name: 'National Trust',
    url: 'http://www.nationaltrust.org.uk/',
    priority: 1
  },
  { 
    name: 'Arla',
    url: 'http://www.arlafoods.co.uk/',
    priority: 2
  },
  { 
    name: 'NHS',
    url: 'http://www.nhs.uk/',
    priority: 3
  },
  { 
    name: 'Play England',
    url: 'http://www.playengland.org.uk/',
    priority: 4
  },
  { 
    name: 'Britdoc',
    url: 'http://britdoc.org/',
    priority: 5
  },
  { 
    name: 'Al Kennedy',
    url: 'https://twitter.com/_alkennedy',
    priority: 6
  },
  { 
    name: 'Eden Project',
    url: 'http://www.edenproject.com/',
    priority: 7
  },
  { 
    name: 'TYF',
    url: 'http://www.tyf.com/',
    priority: 8
  },
  { 
    name: 'Do Lectures',
    url: 'http://www.dolectures.com/',
    priority: 9
  },
  { 
    name: 'Green Lions',
    url: 'http://www.greenlions.com/',
    priority: 10
  },
  { 
    name: 'Good for Nothing',
    url: 'http://www.goodfornothing.com',
    priority: 11
  }
])
