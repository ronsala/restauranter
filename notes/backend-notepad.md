# Backend Notepad

## MVP

### Models

Restaurant has many menus and orders
Attrs: name, street, city, state, desc

Menu belongs to Restaurant, has many sections
Attrs: name, restaurant_id

Section belongs to Menu, has many items
Attrs: name, menu_id

Item belongs to Section, has many order_items
Attrs: name, price, desc, section_id

Patron has many orders
Attrs: first_name, last_name, street, city, state

Order belongs to Restaurant and Patron, has many order_items
Attrs: total, restaurant_id, patron_id

OrderItem belongs to Item and Order
Attrs: quantity, item_id, order_id

## Later

### Models

Proprietor has many restaurants
Attrs: first_name, last_name, email, password_digest, street, city, state

Restaurant belongs to Proprietor, has many menus
Attrs: name, street, city, state, desc, proprietor_id

Menu belongs to Restaurant, has many sections
Attrs: name, restaurant_id

Section belongs to Menu, has many items
Attrs: name, menu_id

Item belongs to Section
Attrs: name, price, desc, section_id

Patron has many orders
Attrs: first_name, last_name, email, password_digest, street, city, state

Order belongs to Restaurant and Patron, has many items
Attrs: total, restaurant_id, patron_id, street, city, state