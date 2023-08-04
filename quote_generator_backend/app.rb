require 'sinatra'
require 'sinatra/activerecord'

# Set up database connection 
set :database, { adapter: 'sqlite3', database: 'db/quotes.db' }

class Quote < ActiveRecord::Base
end

# API to get random quote
get '/quotes/random' do
  content_type :json
  quote = Quote.order('RANDOM()').first
  quote
end

# API to create new quote
post '/quotes' do
  content_type :json
  request_body = JSON.parse(request.body.read)
  quote = Quote.create(request_body)
  quote
end

