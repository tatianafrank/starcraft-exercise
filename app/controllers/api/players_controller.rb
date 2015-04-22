class Api::PlayersController < ApplicationController
	def show
		player_id = params[:player_id]
		matches=Match.where('winner_id=? OR loser_id=?', player_id, player_id)
		render json: matches
	end
end
