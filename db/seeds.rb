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
    { 
      section_id: Section.last.id, 
      name: 'Blooming Onion', 
      price: 5, 
      desc: 'Crispy bouquet of onion deep fried in beef tallow.' 
    }, 
    { 
      section_id: Section.last.id, 
      name: 'Side Salad', 
      price: 4, 
      desc: "Lettuce, tomato, cucumber, with olive oil and red wine vinegar." 
    },
    { 
      section_id: Section.last.id, 
      name: 'Nachos and Salsa', 
      price: 4.5, 
      desc: "Mild, Medium, Hot, or Ludicrous, it's up to you."
    }
  ]
)

Section.create(name: 'Entrees', menu_id: menu.id)

Item.create(
  [
    {
      section_id: Section.last.id,
      name: 'Personal Pizza',
      price: '12',
      desc: 'Fresh mozzarella and tomato sauce, thin crust.'
    },
    { 
      section_id: Section.last.id, 
      name: 'Large Salad', 
      price: 7, 
      desc: 'Lettuce, tomato, cucumber, with olive oil and red wine vinegar.' 
    }, 
    { 
      section_id: Section.last.id, 
      name: 'Hamburger', 
      price: 4, 
      desc: "Grass-fed beef on a brioche bun. Fixings on the side." 
    },
    { 
      section_id: Section.last.id, 
      name: 'Fission Chips', 
      price: 4.5, 
      desc: "Crispy battered catch-of-the-day so spicy it's nuclear! Includes fries made with Idaho potatoes."
    }
  ]
)

Section.create(name: 'Beverages', menu_id: menu.id)

Item.create(
  [
    {
      section_id: Section.last.id,
      name: 'House Red, 5 oz',
      price: '8',
      desc: "Organic wine of our sommelier's choosing."
    },
    {
      section_id: Section.last.id,
      name: 'House White, 5 oz',
      price: '8',
      desc: "Organic wine of our sommelier's choosing."
    },
    { 
      section_id: Section.last.id, 
      name: 'Coffee', 
      price: 3, 
      desc: 'Big Kahuna brand.' 
    }, 
    { 
      section_id: Section.last.id, 
      name: "Sam's Happy Ale, 12 oz", 
      price: 4, 
      desc: "It's God's gift to beer lovers!" 
    },
    { 
      section_id: Section.last.id, 
      name: 'Aloc Cola', 
      price: 0.5, 
      desc: "Stick to this and you'll be able to look at yourself in the mirror in the morning."
    }
  ]
)

Section.create(name: 'Desserts', menu_id: menu.id)

Item.create(
  [
    {
      section_id: Section.last.id,
      name: 'Creme Brulee',
      price: '11',
      desc: 'The ambrosia of diplomats.'
    },
    { 
      section_id: Section.last.id, 
      name: 'Astronaut Ice Cream', 
      price: 3, 
      desc: "It's out of this world!" 
    }, 
    { 
      section_id: Section.last.id, 
      name: "Hot Chocolate Waffle A La Mode", 
      price: 9, 
      desc: "Feel the hot and cold!" 
    },
    { 
      section_id: Section.last.id, 
      name: 'Mango Lassi', 
      price: 4.25, 
      desc: "Made with fresh Idaho mangos."
    } 
  ]
)
