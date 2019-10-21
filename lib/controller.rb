require 'bundler'
Bundler.require

require 'gossip' #le fichier qui récupère les données.

class ApplicationController < Sinatra::Base #ApplicationController hérite de sinatra Base

  get '/' do #homme page de l'application,
    erb :index, locals: {gossips: Gossip.all}
  end
    get '/gossips/new/' do
    erb :new_gossip
  end
  post '/gossips/new/' do #récupère les inputs (gossips) des utilisateurs.
    puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
    Gossip.new(params["gossip_author"],params["gossip_content"]).save
    redirect '/' #redirige vers la homepage 
  end
end
