require "rspec"
require "watir"
require "helper"

shared_context "Filter Item per Price" do |min, max, filterPrice|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context "Filtering per price" do
    it "clicks on Shop" do
      method.shop_click
      sleep 3
    end

    it "clicks on sends in Min price" do
      method.minPrice_set(min)
      sleep 3
    end

    it "clicks on sends in Max price" do
      method.maxPrice_set(max)
      sleep 3
    end

    it "verifies that filter per price is applied" do
      expect(method.active_filters_text).to eql filterPrice
      sleep 3
    end
  end
end
