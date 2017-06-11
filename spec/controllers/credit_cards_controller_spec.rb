require "rails_helper"

describe CreditCardsController do

  describe "GET credit cards" do
    before(:each) do
      FactoryGirl.create :credit_card, cvv: "123", number: "1235123512351235", expiration_date: "08/20"
      FactoryGirl.create :credit_card, cvv: "123", number: "1236123612361236", expiration_date: "08/20"
    end

    subject { get :index }

    it "returns all the credit cards" do
      subject
      expect(response.status).to eq 200
      expect(assigns(:credit_cards).size).to equal(2)
    end
  end



  describe "Create credit_card" do
    let(:credit_card_params) {
       { credit_card: { cvv: "121", number: "1234567890123456", expiration_date: "10/19" }, format: :js }
    }

    it "creates a credit_card" do
      post :create, credit_card_params
      expect(CreditCard.first.number).to eq "1234567890123456"
    end
  end

  describe "DELETE credit_card" do
    let!(:credit_card) { FactoryGirl.create :credit_card }

    it "deletes a credit_card" do
      delete :destroy, {id: 1, format: :js}
      expect(credit_card).not_to be_nil
      expect(CreditCard.count).to equal(0)
    end
  end
end