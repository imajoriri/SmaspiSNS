class SmaspisController < ApplicationController

  def new
    @smaspi = Smaspi.new
  end 

  def create
    @smaspi = Smaspi.new(smaspi_params)
    if @smaspi.save
      redirect_to action: "new"
    else
      redirect_to action: "new"
    end 
  end 

  private

  def smaspi_params
    params.require(:smaspi).permit(:name, :image)
  end 
end
