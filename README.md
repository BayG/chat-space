== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

1. Table

  Users Table

  |column|type|
  |:---:|:---:|
  |name|string|
  |email|string|
  |password|integer|

  Messages Table

  |column|type|
  |:---:|:---:|
  |body|text|
  |image|string|
  |user_id|integer|
  |group_id|integer|

  Groups Table

  |column|type|
  |:---:|:---:|
  |group_name|string|


  User_group Table

  |column|type|
  |:---:|:---:|
  |user_id|integer|
  |group_id|integer|



