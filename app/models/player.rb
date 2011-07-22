class Player < ActiveRecord::Base
  has_many :needle
  has_many :guess
end
