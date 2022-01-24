require "rspec"
require "watir"
require "helper"

shared_context "Filter Categories" do |sweaters, shoes, shirts, trousers, hats|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }

  context "Filtering Clothes" do
    it "clicks on Shop" do
      method.shop_click
      sleep 3
    end

    it "clicks on Clothes in Categories" do
      method.clothes_click
      sleep 3
    end

    context "Sweaters filter" do
      it "applies filter for Sweaters " do
        method.sweaters_click
        sleep 3
      end

      it "verifies that filter is applied" do
        expect(method.active_filters_text).to eql sweaters
        sleep 3
      end

      it "turns off filter on Sweaters " do
        method.sweaters_click
        sleep 3
      end
    end

    context "Shoes filter" do
      it "applies filter for Shoes " do
        method.shoes_click
        sleep 3
      end

      it "verifies that filter is applied" do
        expect(method.active_filters_text).to eql shoes
        sleep 3
      end

      it "turns off filter on Shoes " do
        method.shoes_click
        sleep 3
      end
    end

    context "Shirts filter" do
      it "applies filter for Shirts " do
        method.shirts_click
        sleep 3
      end

      it "verifies that filter is applied" do
        expect(method.active_filters_text).to eql shirts
      end

      it "turns off filter on Shirts " do
        method.shirts_click
        sleep 3
      end
    end

    context "Trousers filter" do
      it "applies filter for Trousers " do
        method.trousers_click
        sleep 3
      end

      it "verifies that filter is applied" do
        expect(method.active_filters_text).to eql trousers
      end

      it "turns off filter on Trousers " do
        method.trousers_click
        sleep 3
      end
    end

    context "Sweaters filter" do
      it "applies filter for Hats " do
        method.hats_click
        sleep 3
      end

      it "verifies that filter is applied" do
        expect(method.active_filters_text).to eql hats
      end

      it "turns off filter on Hats " do
        method.hats_click
        sleep 3
      end
    end
  end
end
