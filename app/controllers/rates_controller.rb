class RatesController < ApplicationController
  before_filter :set_motel

  def create
	@rate = @motel.rates.new value: params[:rate][:value]
  	if @rate.save
  		redirect_to(root_path, :notice => "Rate saved successful.")
  	else
  		redirect_to(root_path, :notice => "Something went wrong.")
  	end

  end

 private
    def set_motel
      @motel = Motel.find(params[:motel_id])
    end

end
