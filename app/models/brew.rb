class Brew < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :price, :presence => true
  validates :state, :presence => true
end
