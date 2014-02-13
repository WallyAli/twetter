class RetwetsController < ApplicationController
	
	def create
		@retwet = current_user.retwets.create(retwet_params)
		flash[:success] = "retweted successfully"
		redirect_to retwets_path
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
