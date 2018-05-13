class Peep
  include DataMapper::Resource

  property :id,           Serial
  property :title,        String
  property :body,         String, :length => 1..255
  property :created_at,   DateTime

  has n, :comments
  belongs_to :user

end
