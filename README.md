== README

# What is ChatSpace

ChatSpace is a sample Web application created for practicing Web service development.
This README explains many features about this app.

Things you would know:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Ruby version

Ruby 2.3.1

## Rails version

Rails 5.0.1

## Database design

Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

### 1. Tables

  users table

  |column|type|
  |:---:|:---:|
  |name|string|
  |email|string|
  |password|integer|

  messages table

  |column|type|
  |:---:|:---:|
  |body|text|
  |image|string|
  |user_id|integer|
  |group_id|integer|

  groups table

  |column|type|
  |:---:|:---:|
  |group_name|string|


  users_groups table

  |column|type|
  |:---:|:---:|
  |user_id|integer|
  |group_id|integer|


### 2. Relations

  users table   One-to-many   messages table

  users table   One-to-many   users_groups table

  groups table   One-to-many   users_groups table


### 3. Associations

 - users
 has_many :messages
 has_many :groups, through: :groups_users

 - groups
 has_many :users, through: :groups_users
 has_many :messages

 - groups_users
 belongs_to :group
 belongs_to :user


## Methodology

### Front-end

 - Using Haml instead of HTML

 - Using Sass(.scss) instead of CSS

 - Adopted BEM notation
