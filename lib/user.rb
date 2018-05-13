class User
  include DataMapper::Resource

  property :id,            Serial
  property :user_name,     String, :required => true, :length => 6..20, :unique => true
    :messages => {
      :presense => 'Enter a username'
      :is_unique => 'This username is already taken'
    }
  property :password,      BCryptHash, required => true
  property :first_name,    String, :required => true
  property :last_name,     String, :required => true
  property :email,         String, :required => true, :unique => true
    :format => :email_address,
    :messages => {
      :presense => 'Enter your email address'
      :is_unique => 'An account with this email already exists'
      :format => 'Incorrect email address'
    }
    has n, :peeps
    has n, :comments

end
