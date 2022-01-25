require 'rspec'
require 'watir'
require 'helper'

shared_context 'Login' do |username, password, log_out|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context 'Login with valid credentials' do
    it 'clicks on Sign in button' do
      method.header_click
    end

    it "enters valid #{username} and #{password}" do
      method.email_set(username)
      method.passwords_set(password)
    end

    it 'clicks on Sign in button' do
      method.sign_in_click
      sleep 5
    end

    it 'verify is user logged in' do
      expect(method.logged_in_text).to eql log_out
    end
  end
end
