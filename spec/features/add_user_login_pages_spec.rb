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

  it "gives an error when no details are entered" do
    user = User.create(:name => 'Subcomadante Ramona', :email => 'ezln@ezln.com', :password => "password")
    visit root_path
    click_on 'Register'
    fill_in 'Name', :with => ''
    click_on 'Submit'
    expect(page).to have_content ""
  end
end
