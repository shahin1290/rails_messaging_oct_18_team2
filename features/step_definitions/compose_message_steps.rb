Given("I navigate to the login page") do
    visit user_session_path
end

When("I submit {string} and {string}") do |username,password|
    fill_in 'Email', with: username 
    fill_in 'Password', with: password
    click_on 'Log in'
end

Then("I should be logged in") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
end


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