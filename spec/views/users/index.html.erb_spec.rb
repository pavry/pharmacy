# require 'rails_helper'

# RSpec.describe "users/index", type: :view do
#   before(:each) do
#     assign(:users, [
#       User.create!(
#         name: "Name",
#         email: "Email",
#         password: "Password",
#         role: "Role",
#         is_active: false
#       ),
#       User.create!(
#         name: "Name",
#         email: "Email",
#         password: "Password",
#         role: "Role",
#         is_active: false
#       )
#     ])
#   end

#   it "renders a list of users" do
#     render
#     assert_select "tr>td", text: "Name".to_s, count: 2
#     assert_select "tr>td", text: "Email".to_s, count: 2
#     assert_select "tr>td", text: "Password".to_s, count: 2
#     assert_select "tr>td", text: "Role".to_s, count: 2
#     assert_select "tr>td", text: false.to_s, count: 2
#   end
# end
