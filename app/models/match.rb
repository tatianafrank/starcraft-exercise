class Match < ActiveRecord::Base
	belongs_to :winner, class_name: 'Player' #belongs to says the match will have a winner_id
	belongs_to :loser, class_name: 'Player' #belongs to says the match will have a loser_id
end
