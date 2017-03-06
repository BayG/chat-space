# What is ChatSpace

ChatSpace is a sample Web application created for practicing Web service development.
This README explains many features about this app.

Things you would know:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization


## Ruby version

Ruby 2.3.1

## Rails version

Rails 5.0.1

## Database design


1. Tables

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

  
  group_user table
  
  |column|type|
  |:---:|:---:|
  |user_id|integer|
  |group_id|integer|
  

### 2. Relations

  users table   One-to-many   messages table

  users table   One-to-many   group_user table

  groups table   One-to-many   group_user table

  groups table   One-to-many   messages table


### 3. Associations

 - users
 has_many :messages
 has_many :groups, through: :group_user

 - groups
 has_many :users, through: :group_user
 has_many :messages

 - group_user
 belongs_to :group
 belongs_to :user


## Methodology

### Front-end

 - Using Haml instead of HTML

 - Using Sass(.scss) instead of CSS

 - Adopted BEM notation

### Back-end

 - Introduced device
