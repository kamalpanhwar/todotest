# README

This is small project for test I used Json:API stardard format for json.

## How to use

I placed postman collect in code which can be opened using postman and check all
api points

[Test.postman_collection.json](https://raw.githubusercontent.com/kamalpanhwar/todotest/master/Test.postman_collection.json)

or 

## Using Curl

#### Get all todos
```
curl -X GET https://secret-crag-66638.herokuapp.com/api/v1/todos
```

#### create new todo
```
curl -X POST https://secret-crag-66638.herokuapp.com/api/v1/todos  
-F 'title=New Task to do' -F 'details=check desk for details'

```

#### Update task

```
curl -X PUT \
  https://secret-crag-66638.herokuapp.com/api/v1/todos/1 \
  -F 'title=Another great work to do UPDATE'
```
#### Delete task

```
curl -X DELETE \
  https://secret-crag-66638.herokuapp.com/api/v1/todos/3 \

```


* Ruby version
2.5.1
* System dependencies
No dependincies
* Configuration
I used rvm and install Ruby 2.5.1 and Rails 5.2.2

* Database creation
rails db:create

* Database initialization
rails db:migrate

* How to run the test suite
rspec 
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
It was deployed on heroku on the url https://secret-crag-66638.herokuapp.com/ 

* Additional Gems
rspec-rails
factory_bot_rails
active_record_serializer
...

