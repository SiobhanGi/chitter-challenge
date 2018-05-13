class Peep
  include DataMapper::Resource

  property :id,           Serial
  property :body,         String, :length => 1..255
  property :posted_at     DateTime
  property :posted_by     String

  belongs_to :peeps

end
