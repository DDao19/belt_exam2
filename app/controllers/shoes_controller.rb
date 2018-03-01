class ShoesController < ApplicationController

  def index
    @user = User.find(current_user)
    @shoes = Shoe.all
    
  end

  def create
    date = Time.new().to_date
    shoe = Shoe.create(product: params[:product], amount: params[:amount], date: date, user_id: current_user.id)
    if shoe.valid?
      return redirect_to shoes_path
    end

    flash[:errors] = shoe.errors.full_messages
    return redirect_to "dashboard/#{current_user.id}"
  end


  def destroy
    Shoe.find(params[:id]).destroy
    return redirect_to :back
  end


end
