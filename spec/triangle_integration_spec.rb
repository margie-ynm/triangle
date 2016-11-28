require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user\'s entries and returns what type of triangle it is') do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '10')
    click_button('Find Out Now!')
    expect(page).to have_content('not a triangle')
  end
end
