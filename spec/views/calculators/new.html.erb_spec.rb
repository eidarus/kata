require 'rails_helper'

RSpec.describe "calculators/new", type: :view do
  before(:each) do
    assign(:calculator, Calculator.new())
  end

  it "renders new calculator form" do
    render

    assert_select "form[action=?][method=?]", calculators_path, "post" do
    end
  end
end
