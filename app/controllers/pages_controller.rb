class PagesController < ApplicationController

  def root
	@motels = Motel.all.order(:rating).reverse_order.limit(5)	
  end

end
