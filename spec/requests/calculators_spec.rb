require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/calculators", type: :request do
  
  # Calculator. As you add validations to Calculator, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Calculator.create! valid_attributes
      get calculators_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      calculator = Calculator.create! valid_attributes
      get calculator_url(calculator)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_calculator_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      calculator = Calculator.create! valid_attributes
      get edit_calculator_url(calculator)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Calculator" do
        expect {
          post calculators_url, params: { calculator: valid_attributes }
        }.to change(Calculator, :count).by(1)
      end

      it "redirects to the created calculator" do
        post calculators_url, params: { calculator: valid_attributes }
        expect(response).to redirect_to(calculator_url(Calculator.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Calculator" do
        expect {
          post calculators_url, params: { calculator: invalid_attributes }
        }.to change(Calculator, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post calculators_url, params: { calculator: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested calculator" do
        calculator = Calculator.create! valid_attributes
        patch calculator_url(calculator), params: { calculator: new_attributes }
        calculator.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the calculator" do
        calculator = Calculator.create! valid_attributes
        patch calculator_url(calculator), params: { calculator: new_attributes }
        calculator.reload
        expect(response).to redirect_to(calculator_url(calculator))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        calculator = Calculator.create! valid_attributes
        patch calculator_url(calculator), params: { calculator: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested calculator" do
      calculator = Calculator.create! valid_attributes
      expect {
        delete calculator_url(calculator)
      }.to change(Calculator, :count).by(-1)
    end

    it "redirects to the calculators list" do
      calculator = Calculator.create! valid_attributes
      delete calculator_url(calculator)
      expect(response).to redirect_to(calculators_url)
    end
  end
end
