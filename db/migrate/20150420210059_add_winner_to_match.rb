class AddWinnerToMatch < ActiveRecord::Migration
  def change
  	add_reference :matches, :winner, references: :players
  end
end
