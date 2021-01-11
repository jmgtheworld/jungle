require 'rails_helper'

RSpec.describe ProductSpec, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'product saves correctly ' do 
      @category = Category.new
      @product = Product.new(name: "Banana", price: 0.5, quantity: 10, category: @category)
      @product.save

      expect(@product).not_to be_nil
    end

    it "should contain a name" do
      @category = Category.new
      @product = Product.new(name: "Banana", price: 0.5, quantity: 10, category: @category)
      @product.save

      expect(@product.name).to be_present
    end


    it "should contain a price" do
      @category = Category.new
      @product = Product.new(name: "Banana", price: 0.5, quantity: 10, category: @category)
      @product.save

      expect(@product.price).to be_present
    end


    it "should contain a quantity" do
      @category = Category.new
      @product = Product.new(name: "Banana", price: 0.5, quantity: 10, category: @category)
      @product.save

      expect(@product.quantity).to be_present
    end


    it "should contain a category" do
      @category = Category.new
      @product = Product.new(name: "Banana", price: 0.5, quantity: 10, category: @category)
      @product.save

      expect(@product.category).to be_present
    end


  end
end
