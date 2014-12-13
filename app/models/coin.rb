class Coin < ActiveRecord::Base
  validates_length_of :content, :maximum => 140

  belongs_to :user
  validates_presence_of :content
end
