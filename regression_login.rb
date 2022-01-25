require 'rspec'
require 'watir'
require 'helper'

describe 'Regression Test Cases: ' do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  username = 'adnanabesic@gmail.com'
  password = 'AuctionApp!'
  log_out = 'Log Out'

  include_context 'Login', username, password, log_out
end
