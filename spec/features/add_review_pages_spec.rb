require 'rails_helper'

describe "adding a review" do
  it "adds a review to a beer" do
    @beer = Brew.create!(name: "Joe Beer", price: 10, state: 'Death Star')
    visit new_brew_review_path(@beer)
    fill_in 'Author', :with => 'Ernest H.'
    fill_in 'Content', :with => 'These words are not enough ...'
    fill_in 'Rating', :with => 4
    click_on 'Create Review'
    expect(page).to have_content 'Content is too short'
  end
end
