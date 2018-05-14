RSpec.feature 'Login' do

  scenario 'user logs in' do
    register
    save_and_open_page
    login

    expect(page).to have_content 'successfully logged in'
  end

  scenario 'user enters incorrect password' do
    login
  end
end
