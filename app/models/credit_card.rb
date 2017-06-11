class CreditCard < ActiveRecord::Base


  validates_presence_of :number
  validates_presence_of :expiration_date
  validates_uniqueness_of :number
  validates :number, length: {is: 16}
  validates :cvv, length: {is: 3}



  def getEncodedNumber
    "************#{number[12,16]}"
  end

end
