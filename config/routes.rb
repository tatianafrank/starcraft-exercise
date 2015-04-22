Rails.application.routes.draw do
  get '/matches' => 'matches#index'
  get '/profile/:name'=> 'players#profile'

  namespace :api do
  	get '/matches' => 'matches#wins' #shows all matches (we can query by winner or loser, doesnt matter)
  	get '/matches/:faction' => 'matches#factions' #shows all starcraft matches in db by faction
  	get '/players/:player_id' => 'players#show' #this route shows all of a player's matches by faction played as
  end
 
end
