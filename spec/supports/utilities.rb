def sign_in(email)
  visit root_path
  click_link 'Sign in'
  fill_in 'Email', with: email
  fill_in 'Password', with: 'password'
  click_button 'Sign in'
end                                                                                
