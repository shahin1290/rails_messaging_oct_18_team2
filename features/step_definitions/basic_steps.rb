When("I am on the {string} page") do |page_path|
    case page_path 
    when 'sign up'
        visit new_user_registration_path
    when 'inbox'
        visit mailbox_inbox_path
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

When("I click to accept the alert message") do
    alert = page.driver.browser.switch_to.alert
    alert.accept
end

Then("I should have {string} messages") do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end

When('I select {string} from the {string}') do |user, recipients|
    select user, from: recipients
end