class CreateNeedles < ActiveRecord::Migration
  def self.up
    create_table :needles do |t|
      t.integer :player_id
      t.string :image
      t.string :hint1
      t.string :hint2
      t.string :hint3
      t.timestamps
    end
  end

  def self.down
    drop_table :needles
  end
end
