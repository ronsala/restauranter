# Redux Project Checklist

## Purpose

Restauranter: An open source restaurant management web app.

## User Stories

There are two kinds of users: Proprietors and Patrons.

### A Proprietor can

* [ ] sign up and log in
* [ ] set up and maintain restaurants and their menus
* [ ] view order and delivery data

### A Patron can

* [ ] select a restaurant
* [ ] order dishes from a menu
* [ ] arrange delivery
* [ ] check out

## Implementation

* [ ] The code should be written in ES6 as much as possible

* [ ] Use the `create-react-app` generator to start your project.
  * [ ] Follow the instructions on this repo to setup the generator: [create-react-app](https://github.com/facebookincubator/create-react-app)
  * [ ] Use [React Toolkit](https://redux-toolkit.js.org/)

* [ ] Your app should have one HTML page to render your react-redux application

* [ ] There should be 2 container components

  * [ ] ProprietorsContainer
  * [ ] RestaurantsContainer
  * [ ] PatronsContainer

* [ ] There should be 5 stateless components

  * [ ] Menu
  * [ ] Section
  * [ ] Item
  * [ ] OrderPad [i.e. cart]
  * [ ] Delivery
  * [ ] Check[out]

* [ ] There should be 3 routes

  * [ ] / ['Home', choose Proprietor or Patron]
  * [ ] /pr [choose Signup or Login]
  * [ ] /pr/signup
  * [ ] /pr/login
  * [ ] /pr/my-restaurants
  * [ ] /pr/restaurants/[:id]/[CRUD]
  * [ ] /pr/menus/[:id]/[CRUD]
  * [ ] /pn/restaurants/
  * [ ] /pn/restaurants/[:id] [shows current menu]
  * [ ] /order-pad [i.e. 'cart']
  * [ ] /delivery
  * [ ] /check [receipt]

* [ ] The Application must make use of `react-router` and proper RESTful routing (should you choose to use react-router v3 please refer to the appropriate [docs](https://github.com/ReactTraining/react-router/tree/v3/docs); docs for v4 can be found [here](https://reacttraining.com/react-router/web/guides/quick-start))

* [ ] Use Redux middleware to respond to and modify state change

* [ ] Make use of async actions and `redux-thunk` middleware to send data to and receive data from a server

* [ ] Your Rails API should handle the data persistence with a database. You should be using `fetch()` within your actions to GET and POST data from your API - do not use jQuery methods.
  * [ ] Make models and controllers
    * [X] ~~*Menu*~~ [2021-04-11]
    * [X] ~~*Section*~~ [2021-04-11]
    * [X] ~~*Item*~~ [2021-04-11]
    * [X] ~~*Restaurant*~~ [2021-05-09]
    * [X] ~~*Patron*~~ [2021-05-09]
    * [X] ~~*Order*~~ [2021-05-09]
    * [X] ~~*OrderItem*~~ [2021-05-09]
    * [ ] Remove any unnecessary files and folders.

* [ ] Your client-side application should handle the display of data with minimal data manipulation

* [ ] Your application should have some minimal styling: feel free to stick to a framework (like react-bootstrap), but if you want to write (additional) CSS yourself, go for it!
  * [ ] Use [Tailwind](https://tailwindcss.com/) and/or [React Suite](https://rsuitejs.com/)

* [ ] [Once your app is complete, fill out this checklist.](https://goo.gl/forms/ULtKsxuzWomvXuTk2)
  * [ ] Fill in [spec.md](./spec.md)

* [ ] Go wild! These are only the basic requirements — you're free to add on as much stuff as you'd like.
  * [ ] Make an accessible app, with a rating
  * [ ] Create a fictitious restaurant, "Imposters Bar & Grill", users, reservations, and orders for seed data
  * [ ] Write a full README.md and its appendant docs
