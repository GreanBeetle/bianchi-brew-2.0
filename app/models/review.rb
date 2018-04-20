class Review < ActiveRecord::Base
  belongs_to :brew
  validates :brew_id, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
  validates :content, length: {minimum: 50, maximum: 250}, allow_blank: false
  validates :rating, :presence => true
  validates :rating, :inclusion => 1..5
end
