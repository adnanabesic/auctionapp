require "rspec"
require "watir"
require "helper"

describe "Smoke Test Cases: " do
  let(:method) { @main.methods }

  username = "adnanabesic@gmail.com"
  password = "AuctionApp!"
  log_out = "Log Out"
  selected_item = "iPhone 7 plus"
  confirmation_message = "Congrats! You are the highest bidder!"

  include_context "Login", username, password, log_out
  include_context "Select Item", selected_item
  include_context "Bid Item", confirmation_message
end
