class AddRelations < ActiveRecord::Migration
  def self.up
    add_column :needles, :player_id, :integer
    add_column :guesses, :player_id, :integer
  end

  def self.down
    remove_column :needles, :player_id
    remove_column :guesses, :player_id
  end
end
