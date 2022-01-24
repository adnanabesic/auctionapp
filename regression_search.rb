require "rspec"
require "watir"
require "helper"

describe "Regression Test Cases: " do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  keyword = "sweater"

  include_context "Search Item", keyword
end
