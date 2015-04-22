class Match < ActiveRecord::Base
	belongs_to :winner, class_name: 'Player' #belongs to says the match will have a winner_id
	belongs_to :loser, class_name: 'Player' #belongs to says the match will have a loser_id

  def self.by_player(player)
    where('winner_id = ? OR loser_id = ?', player, player)
    #method call on match that sql queries by a single player's id
  end

  def self.by_faction(faction)
    where('winner_faction = ? OR loser_faction = ?', faction, faction)
    #method call on match that sql queries by faction. call this on .by_player to get a player's matches by faction
  end
end
