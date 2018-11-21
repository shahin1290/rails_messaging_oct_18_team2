
When("I visit the {string}") do |page_path|
    visit page_path
end

Then("I should be able to fill in {string} with {string}") do |field, content|
    fill_in field, with: 'content'
end

Then("I should be able to click {string} button to submit form") do |button|
    click_on button
end
  