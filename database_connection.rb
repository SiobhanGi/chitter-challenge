require 'data_mapper'
require 'pg'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup(:default, 'postgres://siobhangi@localhost/chitter_test')
else
  DataMapper.setup(:default, 'postgres://siobhangi@localhost/chitter')
end

DataMapper.auto_migrate!
DataMapper.finalize
