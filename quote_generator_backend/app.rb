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
  quote.to_json
end
