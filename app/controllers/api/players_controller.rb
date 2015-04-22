class Api::PlayersController < ApplicationController
	def show
		player_id = params[:player_id]
		#shows a player's starcraft matches(wins & losses) by the faction he 
		#played as using methods defined in the model
	    protoss_matches = Match.by_player(player_id).by_faction("protoss")
	    zerg_matches = Match.by_player(player_id).by_faction("zerg")
	    terran_matches = Match.by_player(player_id).by_faction("terran")
	    render json: {protoss: protoss_matches, terran: terran_matches, zerg: zerg_matches}
  	end
end
