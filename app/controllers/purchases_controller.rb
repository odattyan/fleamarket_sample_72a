class PurchasesController < ApplicationController
  require "payjp"

  def new
    @item = Item.find(params[:item_id])
  end

  def create
    if current_user.card.nil?
      redirect_to new_card_path, alert: "クレジットカード情報を登録してください"
    else
      @item = Item.find(params[:item_id])
      @purchase = Purchase.new
      @purchase.item_id = @item.id
      @purchase.user_id = current_user.id
      @purchase.save
      @item.trading_status = 2
      @item.save
      Payjp.api_key = ENV["PAYJP_ACCESS_KEY"]
      Payjp::Charge.create(
        amount: @item.price,
        customer: current_user.card.customer_id,
        currency: 'jpy'
      )
      redirect_to root_path, notice: "購入が完了しました"
    end
  end

  private

  def purchase_params
    params.require(:purchase).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end