require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path of index', {:type=> :feature}) do
  it("takes you to success page when you add a word") do
    visit('/')
    click_button('Add That Word!')
    expect(page).to have_content("Great")
  end
end

describe('path of index', {:type=> :feature}) do
  it("prints out a list of words") do
    visit('/')
    fill_in("word", :with=> "deer")
    click_button('Add That Word!')
    visit('/')
    expect(page).to have_content("deer")
  end
end

describe('path of definition', {:type=> :feature}) do
    it("takes you to success page when you add a definition") do
    visit('/word/:word')
    click_button('Add That Definition!')
    expect(page).to have_content("Great")
  end
end
