require 'rspec'
require 'watir'
require 'helper'

shared_context 'Select Item' do |selected_item|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context 'Select Item from New Arrivals' do
    it 'clicks on New Arrivals section ' do
      method.new_arrival_click
      sleep 3
    end

    it 'select item' do
      method.select_item_click
      sleep 3
    end

    it 'verify that item is selected ' do
      expect(method.selected_item_text).to eql selected_item
    end
  end
end
