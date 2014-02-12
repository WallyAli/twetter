class RetwetsController < ApplicationController

	def create
		@retwet = current_user.retwets.create(retwet_params)
		if @retwet.valid? && @retwet.persisted?
			flash[:success] = "retweted successfully"
			redirect_to profile_path
		else
			flash[:error] = "retwet not successfull"
		end
	end

	private
	def retwet_params
		params.require(:retwet).permit()
		
	end


	def destroy
		@retwet = current_user.retwets.find(params[:retwets])
		@retwet.destroy
	end

	def review_params
		params.require(:retwet).permit(:tweet_id)
	end


end
