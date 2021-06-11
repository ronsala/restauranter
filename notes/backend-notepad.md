# Backend Notepad

## User Flow

Home =>

* About => About
* Proprietors => LoggedIn ? ProprietorsContainer/RestaurantsTable showing proprietor's restaurants : SignupLogin
* Patrons => RestaurantsTable showing all restaurants
  * [Menu button] => RestaurantContainer/Restaurant/MenuContainer/SectionsContainer/SectionAccordion/ItemsContainer/ItemsTable & OrderItemsContainer/OrderItemsTable/[Checkout button] =>
    * LoggedIn ?
      * OrderModal/[Submit Payment button] => ['Order Placed' alert] over Home :
      * add [Sign Up/Log In? button] => clicked ?
      * SignupLogin
* SignupLogin => SignupLogin | Logout => Home

* ProprietorSelectCard => LoggedIn ?
  * RestaurantsTable showing proprietor's restaurants & [Add Restaurant button] => RestaurantForm:
  * SignupLogin
* PatronSelectCard => RestaurantsTable showing all restaurants
& [Add Restaurant button]

ProprietorsContainer/RestaurantsTable =>

* RestaurantOrders/RestaurantOrdersTable/[View button] =>
  * ProprietorsOrderCard/[Mark Fulfilled button]

SignupLogin =>

* Signup =>
  * Account

* Login =>
  * [Not Proptrietor or Patron] Home
  * [Proprietor] ProprietorsContainer/RestaurantsTable showing proprietor's restaurants
  * [Patron] RestaurantsTable showing all restaurants

## Models

User has many restaurants
Attrs: first_name, last_name, email, password_digest, street, city, state

Restaurant belongs to User, has many menus
Attrs: name, street, city, state, desc, user_id

Menu belongs to Restaurant, has many sections
Attrs: name, restaurant_id

Section belongs to Menu, has many items
Attrs: name, menu_id

Item belongs to Section
Attrs: name, price, desc, section_id

Order belongs to Restaurant, has many OrderItems
Attrs: total, restaurant_id

OrderItem belongs to Order and Item
Attrs: name, price, count
