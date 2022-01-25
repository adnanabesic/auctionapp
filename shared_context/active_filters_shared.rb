require "rspec"
require "watir"
require "helper"

shared_context "Filter Categories" do |filter_categories_data|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context "Filtering Clothes" do
    it "clicks on Shop" do
      method.shop_click
      sleep 3
    end
  end

  filter_categories_data.each do |category_data|
    context "Click on #{category_data["category"]}" do
      it "clicks on category #{category_data["category"]}" do
        method.product_category_click(category_data["category"])
      end
    end

    category_data["subcategories_data"].each do |subcategory_data|
      context "Click on #{subcategory_data["subcategory"]}" do
        it "clicks on subcategory #{subcategory_data["subcategory"]}" do
          method.product_subcategory_click(subcategory_data["subcategory_value"])
          sleep 1
        end

        it "filters text to be eql #{subcategory_data["sweaters"]}" do
          expect(method.active_filters_text).to eql subcategory_data["filters_subcategory_value"]
          sleep 1
        end

        it "clicks on subcategory #{subcategory_data["subcategory"]} to turn off filter" do
          method.product_subcategory_click(subcategory_data["subcategory_value"])
          sleep 1
        end
      end
    end
  end
end
