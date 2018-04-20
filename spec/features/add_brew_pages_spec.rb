require 'rails_helper'

describe "adding a brew" do
  it "adds a beer to the database" do
    @beer = Brew.create!(name: "Paulener", price: 10, state: 'Death Star')
    visit root_path
    click_on 'ADD BREW!'
    save_and_open_page
    click_on 'Create Brew'
    expect(page).to have_content 'Hey, friend. You need to fix this stuff.'
  end

  it "gives an error if a field is not completed" do
    visit new_brew_path
    click_on 'Create Brew'
    expect(page).to have_content 'Hey, friend. You need to fix this stuff.'
  end
end
