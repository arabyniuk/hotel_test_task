class AddressesController < ActionController::Base
	def new
		@address = Address.new		
	end
end