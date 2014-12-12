class User < ActiveRecord::Base
  has_many :coins
  validates :name, presence: true, uniqueness: true
  has_secure_password
end
