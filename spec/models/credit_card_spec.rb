require "rails_helper"


describe CreditCard do
  it "saves a valid CreditCard" do
    credit_card = CreditCard.new number: "1234123412341234", cvv: "123", expiration_date: "04/10"
    credit_card.save
    expect(credit_card).to be_valid
  end

  it "doesnt save a CreditCard" do
    credit_card = CreditCard.new number: "1234", cvv: "123", expiration_date: "04/10"
    credit_card.save
    expect(credit_card).not_to be_valid
  end
end