require 'rails_helper'

describe "the edit user process" do
  it "edits a user's info" do
    user = User.create(:name => 'Subcomadante Ramona', :email => 'ezln@ezln.com', :password => "password")
    visit root_path
    click_on 'Log In'
    fill_in 'Email', :with => 'ezln@ezln.com'
    fill_in 'Password', :with => 'password'
    click_on "Log in"
    click_on "Edit"
    fill_in 'Password', :with => 'p4ssw0rd'
    fill_in 'Password confirmation', :with => 'p4ssw0rd'
    click_on 'Submit'
    click_on 'Log Out'
    click_on 'Log In'
    fill_in 'Email', :with => 'ezln@ezln.com'
    fill_in 'Password', :with => 'p4ssw0rd'
    click_on 'Log in'
    expect(page).to have_content "You've been logged in."
  end
end
