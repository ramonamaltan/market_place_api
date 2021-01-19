## Marketplace API

### Background
Follow along the book [api_on_rails](https://github.com/madeindjs/api_on_rails) learning best practices to build REST APIs using Ruby on Rails 6, including setting up authentication with JSON Web Tokens (JWT), testing end-points with unit and functional tests, user JSON:API specification and optimize and cache the API.

### Authorization Token
Create the token with this command [replace email and password]
````
$ curl -X POST --data "user[email]=example@gmail.com" --data "user[password]=123456" http://localhost:3000/api/v1/tokens
````

### Endpoints:

#### Users
##### Get a specific user
`GET /users/:id`
````
$ curl http://localhost:3000/api/v1/users/1
````
##### Create an user
`POST /users`
````
$ curl -X POST --data "user[email]=ockymarvin@jacobi.co" --data "user[password]=locadex1234" http://localhost:3000/api/v1/users
````
##### Update user info
`PATCH /users/:id`
needs Authorization Token
````
$ curl -i -X PATCH \
-H 'Content-Type: application/json' \
-H 'Authorization: {token}' \
-d '{ "user": { "email": "maxmuster@gmail.org" } }' \
http://localhost:3000/api/v1/users/6
````
##### Delete a user
`DELETE /users/:id`
needs Authorization Token
````
$ curl -i -X DELETE
-H 'Authorization: {token}'
http://localhost:3000/api/v1/users/13
````

### Follow same system for Products and Orders Requests
#### Products
See all products: `GET /products`  
````
Filter Products:
Params:
- recent: sort by most recent product
- min_price, max_price: filter by prices
- keyword: filter by product title
e.g. $ curl http://localhost:3000/api/v1/products\?min_price\=50
````
Get a specific product: `GET /products/:id`  
Create a product: `POST /products`  
Update product info (needs Authorization Token): `PATCH /products/:id`  
Delete a product (needs Authorization Token): `DELETE /products/:id` 

#### Orders
See all orders: `GET /orders`  
Get a specific order: `GET /orders/:id`  
Create a order: `POST /orders`  
