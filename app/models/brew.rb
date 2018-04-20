class Brew < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :price, :presence => true
  validates :state, :presence => true

  

  scope :seven_most_recent, -> {order(created_at: :desc).limit(7)}
end
