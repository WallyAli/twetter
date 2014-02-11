class RetwetsController < ApplicationController
	def create
		@retwet = current_user.retwets.create(retwet_params)
		if @retwet.valid? && @retwet.persisted?
			flash[:success] = "retweted successfully"
		else
			flas[:error] = "retwet not successfull"
		end
	end

	private
	def retwet_params
		params.require(:retwet).permit()
		
	end
end
