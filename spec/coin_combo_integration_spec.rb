require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo path' , {:type => :feature}) do
  it('processes user entry and returns coin combination') do
    visit('/')
    fill_in("money_input" :with "4523")
    click_button('Enter')
    expect(page).to have_content("You will need 180 quarter(s), 2 dime(s), 0 nickel(s), 3 penn(y/ies).")
  end
end
