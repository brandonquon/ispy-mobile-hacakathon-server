class CreateGuesses < ActiveRecord::Migration
  def self.up
    create_table :guesses do |t|
      t.string :guessimage
      t.boolean :iscorrect
      t.boolean :checked

      t.timestamps
    end
  end

  def self.down
    drop_table :guesses
  end
end
