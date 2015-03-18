require 'rails_helper'

describe "the edit user process" do
  it "edits a user's info" do
    new_user = User.create(:name => "Lee", :email => "lee@lee.com", password: "dude", password_confirmation: "dude")
    visit user_path(new_user)
    click_on "Edit"
    fill_in "Name", :with => "Lee"
    fill_in "Email", :with => "lee@mr.com"
    fill_in "Password", :with => "dude"
    fill_in "Password confirmation", :with => "dude"

    click_on "Submit"
    expect(page).to have_content "updated"
  end
end
