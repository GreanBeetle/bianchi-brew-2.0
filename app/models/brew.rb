class Brew < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :price, :presence => true
  validates :state, :presence => true

  scope :seven_most_recent, -> {order(created_at: :desc).limit(7)}

  scope :death_star, -> { where(state: "Death Star") }

  def self.most_reviewed
    brews = self.all
    @brew = brews.last
    brews.each do |brew|
      if brew.reviews.length > @brew.reviews.length
        @brew = brew
      end
    end
    @brew
  end


end
