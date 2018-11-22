Given("following users exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Given("I am on the {string} page") do |value|
    visit mailbox_inbox_path
end

When("I click on {string}") do |value|
    click_on value
end

When("I select {string} from the {string}") do |user, recipients|
    select user, from: recipients
end

When("I fill in the {string} with {string}") do |object, value|
    fill_in object, with: value
end

When("I click the {string}") do |value|
    click_on value
end

Then("the message is sent") do
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I see {string}") do |string|
    expect(page).to have_content(string) 
end