class Review < ActiveRecord::Base
  belongs_to :brew 
  validates :brew_id, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
  validates :rating, :presence => true
end
