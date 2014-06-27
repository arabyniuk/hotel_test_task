class PagesController < ApplicationController

  def root
	@motels = Motel.all
  end

end
