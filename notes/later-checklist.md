# Redux Project Checklist

## Purpose

Restauranter: An open source restaurant management web app.

## User Stories

### A user can

#### MVP

* [ ] order dishes from a menu
* [ ] arrange delivery
* [ ] check out

#### Later

* [ ] get info and directions
* [ ] make a reservation
* [ ] set up an optional end user account
* [ ] set up an admin account


## Implementation

* [ ] The code should be written in ES6 as much as possible

* [ ] Use the `create-react-app` generator to start your project.
  * [ ] Follow the instructions on this repo to setup the generator: [create-react-app](https://github.com/facebookincubator/create-react-app)
  * [ ] Use [React Toolkit](https://redux-toolkit.js.org/)

* [ ] Your app should have one HTML page to render your react-redux application

* [ ] There should be 2 container components

#### MVP

* [ ] UserContainer
* [ ] MenuContainer
* [ ] OrderContainer

#### Later

* [ ] ReservationContainer

* [ ] There should be 5 stateless components

#### MVP

* [ ] Home
* [ ] Menu
* [ ] Check [i.e. cart]
* [ ] Checkout
* [ ] Delivery

#### Later

* [ ] Reservations
* [ ] DirectionsAndInfo
* [ ] Signup
* [ ] Login

* [ ] There should be 3 routes

### MVP

* [ ] / ['Home']
* [ ] /menu
* [ ] /order-pad [i.e. 'cart']
* [ ] /delivery
* [ ] /checkout

### Later

* [ ] /directions-and-info
* [ ] /signup
* [ ] /login
* [ ] /account
* [ ] /reservations

* [ ] The Application must make use of `react-router` and proper RESTful routing (should you choose to use react-router v3 please refer to the appropriate [docs](https://github.com/ReactTraining/react-router/tree/v3/docs); docs for v4 can be found [here](https://reacttraining.com/react-router/web/guides/quick-start))

* [ ] Use Redux middleware to respond to and modify state change

* [ ] Make use of async actions and `redux-thunk` middleware to send data to and receive data from a server

* [ ] Your Rails API should handle the data persistence with a database. You should be using `fetch()` within your actions to GET and POST data from your API - do not use jQuery methods.
  * [ ] Make models and controllers
    * [X] ~~*Menu [has many sections, attrs: name]*~~ [2021-04-11]
    * [X] ~~*Section [belongs to menu, has many items, attrs: name]*~~ [2021-04-11]
    * [X] ~~*Item [belongs to section, attrs: name, price, desc]*~~ [2021-04-11]
    * [ ] Remove any unnecessary files and folders.

* [ ] Your client-side application should handle the display of data with minimal data manipulation

* [ ] Your application should have some minimal styling: feel free to stick to a framework (like react-bootstrap), but if you want to write (additional) CSS yourself, go for it!
  * [ ] Use [Tailwind](https://tailwindcss.com/)

* [ ] [Once your app is complete, fill out this checklist.](https://goo.gl/forms/ULtKsxuzWomvXuTk2)
  * [ ] Fill in [spec.md](./spec.md)

* [ ] Go wild! These are only the basic requirements — you're free to add on as much stuff as you'd like.
  * [ ] Make an accessible app, with a rating
  * [ ] Create a fictitious restaurant, "Imposters Bar & Grill", users, reservations, and orders for seed data
  * [ ] Write a full README.md and its appendant docs
