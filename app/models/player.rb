class Player < ActiveRecord::Base
  has_many :needles
  has_many :guesses
end
