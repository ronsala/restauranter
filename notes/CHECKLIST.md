# Redux Project Checklist

## Purpose

Restauranter: An open source restaurant management web app.

## User Stories

There are two user roles: Proprietor and Patron.

### A user as Proprietor can

* [X] ~~*sign up and log in*~~ [2021-06-15]
* [X] ~~*set up and maintain restaurants and their menus*~~ [2021-06-27]
* [X] ~~*see their restaurant's orders and mark them fulfilled*~~ [2021-06-27]

### A user as Patron can

* [X] ~~*select a restaurant*~~ [2021-06-15]
* [X] ~~*order dishes from a menu*~~ [2021-06-15]
* [X] ~~*check out*~~ [2021-06-27]

## Implementation

* [X] ~~*The code should be written in ES6 as much as possible*~~ [2021-06-15]

* [X] ~~*Use the `create-react-app` generator to start your project.*~~ [2021-06-15]
  * [X] ~~*Follow the instructions on this repo to setup the generator: [create-react-app](https://github.com/facebookincubator/create-react-app)*~~ [2021-06-15]
  * [X] ~~*Use [React Toolkit](https://redux-toolkit.js.org/)*~~ [2021-06-15]

* [X] ~~*Your app should have one HTML page to render your react-redux application*~~ [2021-06-15]

* [X] ~~*There should be 2 container components*~~ [2021-06-15]

  * [X] ~~*MenuContainer*~~ [2021-06-15]
  * [X] ~~*RestaurantsContainer*~~ [2021-06-15]

* [ ] There should be 5 stateless components

  * [X] ~~*Menu*~~ [2021-06-15]
  * [X] ~~*SectionAccordion*~~ [2021-06-15]
  * [X] ~~*ItemsTable*~~ [2021-06-15]
  * [X] ~~*Buttons*~~ [2021-06-26]
  * [X] ~~*Restaurant*~~ [2021-06-15]

* [X] ~~*There should be 3 routes*~~ [2021-06-15]

  * [X] ~~*/ ['Home', choose Proprietor or Patron]*~~ [2021-06-15]
  * [X] ~~*/about*~~ [2021-06-15]
  * [X] ~~*/restaurant*~~ [2021-06-15]

* [X] ~~*The Application must make use of `react-router` and proper RESTful routing (should you choose to use react-router v3 please refer to the appropriate [docs](https://github.com/ReactTraining/react-router/tree/v3/docs); docs for v4 can be found [here](https://reacttraining.com/react-router/web/guides/quick-start))*~~ [2021-06-15]

* [X] ~~*Use Redux middleware to respond to and modify state change*~~ [2021-06-15]

* [X] ~~*Make use of async actions and `redux-thunk` middleware to send data to and receive data from a server*~~ [2021-06-15]

* [X] ~~*Your Rails API should handle the data persistence with a database. You should be using `fetch()` within your actions to GET and POST data from your API - do not use jQuery methods.*~~ [2021-06-15]
  * [X] ~~*Make models and controllers*~~ [2021-06-15]
    * [X] ~~*Menu*~~ [2021-04-11]
    * [X] ~~*Section*~~ [2021-04-11]
    * [X] ~~*Item*~~ [2021-04-11]
    * [X] ~~*Restaurant*~~ [2021-05-09]
    * [X] ~~*Patron*~~ [2021-05-09]
    * [X] ~~*Order*~~ [2021-05-09]
    * [X] ~~*OrderItem*~~ [2021-05-09]
    * [ ] Remove any unnecessary files and folders.

* [X] ~~*Your client-side application should handle the display of data with minimal data manipulation*~~ [2021-06-15]

* [X] ~~*Your application should have some minimal styling: feel free to stick to a framework (like react-bootstrap), but if you want to write (additional) CSS yourself, go for it!*~~ [2021-06-15]

* [ ] [Once your app is complete, fill out this checklist.](https://goo.gl/forms/ULtKsxuzWomvXuTk2)
  * [ ] Fill in [spec.md](./spec.md)

  * [ ] Write a full README.md and its appendant docs
