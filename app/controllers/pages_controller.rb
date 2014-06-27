class PagesController < ApplicationController

  def root
		@hotels = Hotel.all
  end

end
