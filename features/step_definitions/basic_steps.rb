
When("I visit the {string} page") do |page_path|
    if page_path == 'sign up'
        visit new_user_registration_path
    else
        return false
    end
end

Then("I should be able to fill in {string} with {string}") do |input_field, input_value|
    fill_in input_field, with: input_value
end

When("I click {string} to submit form") do |value|
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
  