require 'rspec'
require 'watir'
require 'helper'

describe 'Regression Test Cases: ' do
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  filter_categories_data = [{
    'category' => 'Clothes',
    'subcategories_data' => [{
                               'subcategory_value' => 2,
                               'subcategory' => 'Sweaters',
                               'filters_subcategory_value' => 'Clothes/Sweaters x',
                             },
                             {
                               'subcategory_value' => 3,
                               'subcategory' => 'Shoes',
                               'filters_subcategory_value' => 'Clothes/Shoes x',
                             },
                             {
                               'subcategory_value' => 8,
                               'subcategory' => 'Shirts',
                               'filters_subcategory_value' => 'Clothes/Shirts x',
                             },
                             {
                               'subcategory_value' => 9,
                               'subcategory' => 'Trousers',
                               'filters_subcategory_value' => 'Clothes/Trousers x',
                             },
                             {
                               'subcategory_value' => 10,
                               'subcategory' => 'Hats',
                               'filters_subcategory_value' => 'Clothes/Hats x',
                             }],
  },
                            {
    'category' => 'Furniture',
    'subcategories_data' => [{
                               'subcategory_value' => 12,
                               'subcategory' => 'Sofas',
                               'filters_subcategory_value' => 'Furniture/Sofas x',
                             }],
  },
                            {
    'category' => 'Technology',
    'subcategories_data' => [{
                               'subcategory_value' => 11,
                               'subcategory' => 'Mobile Devices',
                               'filters_subcategory_value' => 'Technology/Mobile devices x',
                             }],
  },
                            {
    'category' => 'Jewelry',
    'subcategories_data' => [{
                               'subcategory_value' => 13,
                               'subcategory' => 'Necklaces',
                               'filters_subcategory_value' => 'Jewelry/Necklaces x',
                             }],
  },
                            {
    'category' => 'Collectibles',
    'subcategories_data' => [{
                               'subcategory_value' => 14,
                               'subcategory' => 'Stamps',
                               'filters_subcategory_value' => 'Collectibles/Stamps x',
                             }],
  }]

  include_context 'Filter Categories', filter_categories_data
end
