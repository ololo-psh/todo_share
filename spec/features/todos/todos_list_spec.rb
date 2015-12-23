include Warden::Test::Helpers
Warden.test_mode!

feature 'todos list' do

  let(:user) { FactoryGirl.create(:user) }

  before(:each) do
    login_as(user, :scope => :user)
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'My Todos'
  end

  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'My Todos'
  end
end