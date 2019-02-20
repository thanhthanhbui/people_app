class AddressesController < ApplicationController
  def new_address
    @address = Address.new
  end

  def show_address
    @address = Address.find(params[:id])
  end

  def edit_address
    @address = Address.find(params[:id])
  end

  def update_address
    @address = Address.find(params[:id])

    if @address.update(addresses_params)
      redirect_to person_path
    else
      render :edit_address
    end
  end

  def create
    @address = Address.new(addresses_params)

    if @address.save
      redirect_to person_path
    else
      render :new_address
    end
  end

  def destroy
    Address.find(params[:id]).destroy
    redirect_to person_path
  end

  private

  def addresses_params
    params.require(:address).permit(:state, :city, :zip)
  end
end
