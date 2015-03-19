require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit root_path
    click_on 'Register'
    fill_in 'Name', :with => 'Anthony Bourdain'
    fill_in 'Email', :with => 'No@reservations.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Submit'
    expect(page).to have_content "Welcome Aboard!"
  end
end
