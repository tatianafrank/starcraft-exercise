class Api::MatchesController < ApplicationController
	def wins
		matches= Match.joins(:winner).includes([:winner]) #include solves n+1 problem because it fetches winners right away
		render json: matches
	end
	def factions
		faction = params[:faction]
		matches = Match.joins(:winner).where('winner_faction= ? OR loser_faction= ?', faction, faction)
		render json: {faction: faction, matches: matches}
	end
end
