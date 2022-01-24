require 'rspec'
require 'watir'
require 'helper'

describe 'Regression Test Cases: ' do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  register_data = {
    'name' => 'Regression',
    'surname' => 'Test Cases',
    'email' => 'testingregression@gmail.com',
    'password' => 'testingregression',
    'registered' => 'User registered successfully!'
    }


  include_context 'Register Form', register_data
end
