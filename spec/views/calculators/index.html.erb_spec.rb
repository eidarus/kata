require 'rails_helper'

RSpec.describe "calculators/index", type: :view do
  before(:each) do
    assign(:calculators, [
      Calculator.create!(),
      Calculator.create!()
    ])
  end

  it "renders a list of calculators" do
    render
  end
end
