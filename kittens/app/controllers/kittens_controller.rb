class KittensController < ApplicationController
	def index
		@kittens = Kitten.all
		respond_to do |format|
			format.html
			format.json {render json: @kittens}
		end
	end

	def show
		@kitten = Kitten.find(params[:id])
		respond_to do |format|
      format.html 
      format.json {render json: @kitten}
		end
	end

	def new
		@kitten = Kitten.new
	end

	def create
		@kitten = Kitten.new(kitten_params)
		if @kitten.save
			redirect_to root_url
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @kitten.update_attributes(kitten_params)
			redirect_to root_url
		else
			render :edit
		end
	end

	def destroy
		@kitten.destroy
		redirect_to root_url
	end

	private

	def kitten_params
		params.require(:kitten).permit(:name, :age)
	end

end
