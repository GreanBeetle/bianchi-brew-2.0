require 'rails_helper'

describe "editing a beer" do
  it "edits beer details" do
    @beer = Brew.create!(name: "Joe Beer", price: 10, state: 'Death Star')
    visit edit_brew_path(@beer)
    fill_in 'Name', :with => 'Ernest H.'
    click_on 'Update Brew'
    expect(page).to have_content 'Ernest H. was edited.'
  end
end
