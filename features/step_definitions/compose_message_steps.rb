# Given('following users exists') do |table|
#     table.hashes.each do |user|
#         FactoryBot.create(:user, user)
#     end
# end

# Given('I am logged in as {string}') do |name|
#   user = User.find_by(name: name)
#   login_as(user, scope: :user)
# end

# Given('I am on inbox page') do
#     visit mailbox_inbox_path
# end

# When('I select {string} from the {string}') do |user, recipients|
#     select user, from: recipients
# end