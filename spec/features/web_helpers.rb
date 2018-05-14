def register
  visit '/sign_up'
  fill_in 'user_name', with: 'Username'
  fill_in 'password', with: 'Password'
  fill_in 'email', with: 'test@test.com'
  click_on('Submit')
end

def login
  visit '/'
  fill_in 'log_in', with: 'Username'
<<<<<<< Updated upstream
  fill_in 'password', with: 'assword'
=======
  fill_in 'password', with: 'Password'
>>>>>>> Stashed changes
  click_on('Submit')
end
