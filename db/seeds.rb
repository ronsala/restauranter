# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.destroy_all
Section.destroy_all
Item.destroy_all

menu = Menu.create

Section.create(name: 'Starters & Sides', menu_id: menu.id)

Item.create(
  [
    { section_id: Section.last.id, name: 'Blooming Onion', price: 5, desc: 'Crispy bouquet of onion deep fried in beef tallow.' }
  ]
)
Section.create(name: 'Entrees', menu_id: menu.id)
Section.create(name: 'Beverages', menu_id: menu.id)
Section.create(name: 'Desserts', menu_id: menu.id)
