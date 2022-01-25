require 'rspec'
require 'watir'
require 'helper'

shared_context 'Bid Item' do |confirmation_message|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context 'Verify the successfull biding' do
    it 'checks value of the highest bid, increases it and sets increased bid' do
      price = method.price_value

      price.slice!(0)
      price2 = price.to_i + 1
      method.bid_input_set(price2)
    end

    it 'clicks on place bid' do
      method.click_bid
    end

    it 'verify is user logged in' do
      expect(method.verify_bidder).to eql confirmation_message
    end
  end
end
