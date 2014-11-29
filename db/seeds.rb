# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#users = User.create ([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coder = Profile.create(name: 'coder')
copy = Profile.create(name: 'copy')
art = Profile.create(name: 'art')



art_user = User.create(email: "loliart@gmail.com", password: "loliart22", profile_id: art.id, name: 'Loli Art', portfolio_url: 'portfoliololi.com')
coder_user = User.create(email: "lolocoder@gmail.com", password: "lolocoder22", profile_id: coder.id, name: 'Lolo coder', portfolio_url: 'portfoliololo.com')
copy_user = User.create(email: "aidacopy@gmail.com", password: "aidacopy22", profile_id: copy.id, name: 'Aida Copy', portfolio_url: 'portfolioaida.com')

Advert.create(title: 'Any coder?', description: 'I need a coder.', user_id: art_user.id)
Advert.create(title: 'Any copy?', description: 'I need a copy.', user_id: coder_user.id)
Advert.create(title: 'Any art?', description: 'I need a art.', user_id: copy_user.id)
