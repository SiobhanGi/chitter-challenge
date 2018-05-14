require 'bcrypt'
require_relative './database_connection.rb'

class User
  include DataMapper::Resource

  property :id,            Serial
  property :user_name,     String, :required => true, :unique => true,
    :messages => {
      :presense => 'Enter a username',
      :is_unique => 'This username is already taken'
      }

  property :email,         String, :required => true, :unique => true,
      :format => :email_address,
      :messages => {
      :presense => 'Enter your email address',
      :is_unique => 'An account with this email already exists',
      :format => 'Incorrect email address'
      }
  property :password,     BCryptHash, :required => true, :unique => true

    has n, :peeps
    has n, :comments

end
