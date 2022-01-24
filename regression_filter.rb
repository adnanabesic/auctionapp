require 'rspec'
require 'watir'
require 'helper'

describe 'Regression Test Cases: ' do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  filter_categories_data = {
    'sweaters' => 'Clothes/Sweaters x',
    'shoes' => 'Clothes/Shoes x',
    'shirts' => 'Clothes/Shirts x',
    'trousers' => 'Clothes/Trousers x',
    'hats' => 'Clothes/Hats x'
    }

  include_context 'Filter Categories', filter_categories_data
end
