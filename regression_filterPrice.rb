require "rspec"
require "watir"
require "helper"

describe "Regression Test Cases: " do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  min = "11"
  max = "111"
  filterPrice = "$11-$111 x"
  
  include_context "Filter Item per Price", min, max, filterPrice
end
