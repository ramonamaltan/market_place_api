### Marketplace API

Follow along the book [api_on_rails](https://github.com/madeindjs/api_on_rails) learning best practices to build REST APIs using Ruby on Rails 6, including setting up authentication with JSON Web Tokens (JWT), testing end-points with unit and functional tests, user JSON:API specification and optimize and cache the API.

### Endpoints:

#### Users
Get a specific user
````
GET /users/:id
````
Create an user
````
POST /users
````
Update user info
````
PATCH /users/:id
needs Authorization Token
````
Delete a user
````
DELETE /users/:id
needs Authorization Token
````

#### Products
See all products
````
GET /products
````
Get a specific product
````
GET /products/:id
````
Create a product
````
POST /products
````
Update product info
````
PATCH /products/:id
needs Authorization Token
````
Delete a product
````
DELETE /products/:id
needs Authorization Token
````

#### Orders
See all orders
````
GET /orders
````
Get a specific order
````
GET /orders/:id
````
Create an order
````
POST /orders
````

### Authorization Token
Create the token with the following command, replace email and password with your user data:
````
$ curl -X POST --data "user[email]=example@gmail.com" --data "user[password]=123456" http://localhost:3000/api/v1/tokens
````
