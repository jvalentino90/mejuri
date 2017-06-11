class CreditCardsController < ApplicationController
  def index
    @credit_cards = CreditCard.all
  end

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.create(credit_card_parameters)
    respond_to do |format|
      format.html { redirect_to credit_cards_path }
      format.js
    end
  end

  def destroy
    binding.pry
    @credit_card = CreditCard.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to credit_cards_path }
      format.js
    end
  end

  def credit_card_parameters
    params.require(:credit_card).permit(:number, :cvv, :expiration_date)
  end
end