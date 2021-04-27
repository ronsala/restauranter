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

menu = Menu.create(name: "Imposters Bar & Grill")

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

menu2 = Menu.create(name: "Phoebe's Cafe")

Section.create(name: 'Appetizers', menu_id: menu2.id)

Item.create(
  [
    { 
      section_id: Section.last.id, 
      name: 'Cole Slaw', 
      price: 3, 
      desc: 'Like Grandma used to make.' 
    }, 
    { 
      section_id: Section.last.id, 
      name: 'Cucumber Salad', 
      price: 4, 
      desc: "Made with hothouse-grown English cucumbers." 
    },
    { 
      section_id: Section.last.id, 
      name: 'Crab Cakes with Horseradish Cream', 
      price: 5, 
      desc: "Clears the sinus passages so you can appreciate your meal all the more."
    }
  ]
)

Section.create(name: 'Large Plates', menu_id: menu.id)

Item.create(
  [
    {
      section_id: Section.last.id,
      name: "Meatloaf-lovers' Meatloaf",
      price: '12',
      desc: 'A large loaf of Angus beef.'
    },
    { 
      section_id: Section.last.id, 
      name: "Fisher's Catch", 
      price: 17, 
      desc: "So fresh you'll think you're at sea." 
    }, 
    { 
      section_id: Section.last.id, 
      name: 'Italian Pie', 
      price: 13, 
      desc: "The OG pizza." 
    },
    { 
      section_id: Section.last.id, 
      name: 'Vegetarian Delight', 
      price: 15, 
      desc: "A gourmet stew of broccoli, cale, string beans and tofu."
    }
  ]
)

Section.create(name: 'Drinks', menu_id: menu.id)

Item.create(
  [
    {
      section_id: Section.last.id,
      name: 'Acme Porter, 20 oz',
      price: '7',
      desc: "The pride of suburban Milwaulkee."
    },
    {
      section_id: Section.last.id,
      name: 'Lime Fizz, 12 oz',
      price: '8',
      desc: "Delightfully refreshing virgin beverage."
    },
    { 
      section_id: Section.last.id, 
      name: 'Black Tea', 
      price: 4, 
      desc: 'Piping hot and fit for a queen.' 
    }, 
    { 
      section_id: Section.last.id, 
      name: "Staten Island Seltzer", 
      price: 5, 
      desc: "Pure and bubbly hydration." 
    },
    { 
      section_id: Section.last.id, 
      name: 'Hot Toddy', 
      price: 5.5, 
      desc: "Good for what ails you."
    }
  ]
)

Section.create(name: 'Sweet Finishes', menu_id: menu.id)

Item.create(
  [
    {
      section_id: Section.last.id,
      name: 'Triple Chocolate Cake',
      price: '12',
      desc: "People can't stop talking about how good it really is."
    },
    { 
      section_id: Section.last.id, 
      name: 'French Vanilla Puddle', 
      price: 6, 
      desc: "Imported from Paris." 
    }, 
    { 
      section_id: Section.last.id, 
      name: "Lemon Pound Cake", 
      price: 9, 
      desc: "One pound of cake that will pucker your cheeks." 
    },
    { 
      section_id: Section.last.id, 
      name: 'Turkish Delight', 
      price: 8.33, 
      desc: "Our secret recipe is the envy of the world."
    } 
  ]
)
