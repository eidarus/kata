require 'rails_helper'

RSpec.describe "calculators/show", type: :view do
  before(:each) do
    @calculator = assign(:calculator, Calculator.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
