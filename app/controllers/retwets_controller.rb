class RetwetsController < ApplicationController


	def create
		@retwet = current_user.retwets.create(review_params)
		if  @retwet.nil?
			flash[:error] = "retweet attempt unsuccessfull"

		else
			flash[:success] = "retweeted successfully"
			redirect_to retwets_path
		end
	end

	def destroy
		@retwet = current_user.retwets.find(params[:retwets])
		@retwet.destroy
	end

	def review_params
		params.require(:retwet).permit(:tweet_id)
	end

end
