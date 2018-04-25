require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:chef) { Chef.new("Bob") }
  subject(:dessert) {Dessert.new('ice cream', 1, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('ice cream')
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new('cake', 'one', :chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.add_ingredient('cherry')).to eq(['cherry'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient('whipped cream')
      dessert.add_ingredient('vanilla ice cream')
      dessert.add_ingredient('cherry')
      expect(dessert.mix!).to contain_exactly('whipped cream', 'cherry', 'vanilla ice cream')
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(1)
      expect(dessert.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(2)}.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include("Bob")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
