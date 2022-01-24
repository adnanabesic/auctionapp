require "rspec"
require "watir"
require "helper"

shared_context "Search Item" do |keyword|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context "Search Item" do
    it "sends keyword to Search input " do
      method.search_text_set(keyword)
      sleep 3
    end
  end
end
