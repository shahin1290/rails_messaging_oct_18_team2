
When("I visit the {string} page") do |page_path|
    if page_path == 'sign up'
        visit new_user_registration_path
    else
        return false
    end
end

Then("I fill in {string} with {string}") do |input_field, input_value|
    fill_in input_field, with: input_value
end

When("I click {string}") do |value|
    click_on value
end

Then("I should see {string} link") do |value|
    expect(page).to have_content value
end
  
Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("Show me the page") do
    save_and_open_page
end

# Delete_Message_Feature

Given("following users exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end
  
Given(/^I am logged in as "([^"]*)"$/) do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

Given("I am on the inbox page") do
    visit mailbox_inbox_path
end

Given(/^I send a mail to "([^"]*)"$/) do |name|
    @receiver = User.find_by(name: name)
    @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Given("I am on the home page") do
    visit root_path
end

Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end

Then("I click on the {string} link") do |string|
pending # Write code here that turns the phrase above into concrete actions
end
  

