require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    'Put this in your pipe & smoke it'
end