# require 'data_mapper'
# require 'dotenv'

# Dotenv.load

# DataMapper::Database.setup({
#   :adapter  => 'mysql',
#   :host     => 'localhost',
#   :username => ENV['DB_USERNAME'],
#   :password => ENV['DB_PASSWORD'],
#   :database => 'sinatra_hello_world'
# })

# class HelloWorld

#   include DataMapper::Persistence

#   property :name, :string
 
# end