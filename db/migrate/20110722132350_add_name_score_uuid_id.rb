class AddNameScoreUuidId < ActiveRecord::Migration
  def self.up
    add_column :players, :name, :string
    add_column :players, :score, :integer
    add_column :players, :uuid, :integer
  end

  def self.down
    add_column :players, :name
    add_column :players, :score
    add_column :players, :uuid

  end
end
