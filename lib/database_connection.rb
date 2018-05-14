require 'data_mapper'
require 'pg'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup :default, {
  :adapter  => 'postgres',
  :host     => 'localhost',
  :database => 'chitter_test',
}

else
  DataMapper.setup :default, {
    :adapter  => 'postgres',
    :host     => 'localhost',
    :database => 'chitter',
  }
end

# DataMapper.auto_migrate!
DataMapper.finalize
