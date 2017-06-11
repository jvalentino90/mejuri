class CreditCard < ActiveRecord::Base


  validates_presence_of :number
  validates_presence_of :expiration_date
  validates_uniqueness_of :number


end
