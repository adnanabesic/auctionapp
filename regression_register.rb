require "rspec"
require "watir"
require "helper"

describe "Regression Test Cases: " do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  name = "Regression"
  surname = "Test Cases"
  email = "testingregression@email.com"
  password = "testingregression"
  registered = "User registered successfully!"

  include_context "Register Form", name, surname, email, password, registered
end
