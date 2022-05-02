
require 'gossip'

class ApplicationController < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    puts "c'est de la balle"
    redirect '/'
  end

  get '/gossips/:id/' do
    erb :show, locals: {gossip: Gossip.find(params['id'])}
   #puts  "Hello voici le potin n° #{params['id']}!"
  end
  




end