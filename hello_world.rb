require 'sinatra'
require 'json'
require 'sinatra/reloader' if development?

get '/hello_world' do
    JSON.generate({message: 'Hello world!'})
end

