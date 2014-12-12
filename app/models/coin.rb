class Coin < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  validates_presence_of :content
end
