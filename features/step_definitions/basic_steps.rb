
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

Given("following users exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("the following email exists") do |table|
    table.hashes.each do |email|
        sender = User.find_by(name: email[:sender])
        @receiver = User.find_by(name: email[:receiver])
        sender.send_message(@receiver, email[:body], email[:subject])
    end
end
  
Given("I am logged in as {string}") do |name|
    user = User.find_by(name: name)
    login_as user, scope: :user
end
 
Given("I am on the inbox page") do
    visit mailbox_inbox_path
end

Then("I should have {string} messages") do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end

