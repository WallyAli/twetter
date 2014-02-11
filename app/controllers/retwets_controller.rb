class RetwetsController < ApplicationController
	def create
		@retwet = Retwet.new(retwet_params)
		
	end

	private
	def retwet_params
		params.require(:retwet).permit()
		
	end
end
