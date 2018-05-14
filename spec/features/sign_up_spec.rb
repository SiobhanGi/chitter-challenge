RSpec.feature 'Sign up page' do
  scenario 'successfully sign up to chitter' do
    visit '/sign_up'
    fill_in 'user_name', with: 'Username'
    fill_in 'password', with: 'Password'
    fill_in 'email', with: 'test@test.com'
    click_on('Submit')
    expect(page).to have_content 'Sign up successful'
  end

  scenario 'forget to enter password' do
    visit '/sign_up'
    fill_in 'user_name', with: 'Username'
    fill_in 'password', with: ''
    fill_in 'email', with: 'test@test.com'
    click_on('Submit')
    expect(page).to have_content 'Incorrect details, try again'
  end

  scenario 'forget to enter username' do
    visit '/sign_up'
    fill_in 'user_name', with: ''
    fill_in 'password', with: 'Password'
    fill_in 'email', with: 'test@test.com'
    click_on('Submit')
    expect(page).to have_content 'Incorrect details, try again'
  end

  scenario 'enter incorrrect email' do
    visit '/sign_up'
    fill_in 'user_name', with: 'Username'
    fill_in 'password', with: 'Password'
    fill_in 'email', with: 'test$test.com'
    click_on('Submit')
    expect(page).to have_content 'Incorrect details, try again'
  end
end
