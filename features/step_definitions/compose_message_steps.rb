user = FactoryBot.create(:user)
  
Given("a user exists") do
    expect(user).to be_valid
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  expect(user).to be_valid
#   login_as(user, scope: :user)
end

# Given("I navigate to the login page") do
#    visit new_user_session_path
# end

# When("I submit {string} and {string}") do |username,password|
#    fill_in 'Email', with: username 
#    fill_in 'Password', with: password
#    click_on 'Log in'
# end

# Then("I should be logged in") do
#    visit mailbox_inbox_path
# end


Given("I am on the {string} page") do |value|
    visit mailbox_inbox_path
end

When("I click on {string}") do |value|
    click_on value
end

When("I select {string} from the {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
end

When("I fill in the {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
end

When("I click the {string} button") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("the message is sent") do
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I see {string}") do |string|
    expect(page).to have_content(string) 
end