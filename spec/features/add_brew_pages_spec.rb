require 'rails_helper'

describe "adding a brew" do
  it "adds a beer to the database" do
    visit brews_path
    save_and_open_page
    click_on 'ADD BREW!'
    fill_in 'Name', :with => 'Paulener Hefeweizen'
    fill_in 'Price', :with => 10
    fill_in 'State', :with => 'Home stuff'
    click_on 'Create Brew'
    expect(page).to have_content 'Paulener Hefeweizen was added to the list'
  end

  it "gives an error if a field is not completed" do
    visit new_brew_path
    click_on 'Create Brew'
    expect(page).to have_content 'Hey, friend. You need to fix this stuff.'
  end
end
