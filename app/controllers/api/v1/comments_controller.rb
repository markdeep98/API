module Api 
	module V1
		class CommentsController < ApplicationController
			def index 
				@comments = Comment.order('created_at DESC')

				render json: @comments
			end
		end
	end
end