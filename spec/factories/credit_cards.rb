FactoryGirl.define do
  factory :credit_card, class: CreditCard do
    cvv "123"
    number "1234123412341234"
    expiration_date "12/20"
  end
end