require 'rails_helper'

RSpec.describe "calculators/edit", type: :view do
  before(:each) do
    @calculator = assign(:calculator, Calculator.create!())
  end

  it "renders the edit calculator form" do
    render

    assert_select "form[action=?][method=?]", calculator_path(@calculator), "post" do
    end
  end
end
