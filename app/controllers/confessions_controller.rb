class ConfessionsController < ApplicationController
	before_action :authenticate_user!, only: [:update]
	def index 
		@confession = Confession.all.reverse
	end

  	def create
  		@confession = Confession.create(confession_params) 
  		if @confession.invalid?
  			flash[:error] = 'Couldn\'t save. The saying you entered is invalid. Make sure it\'s between 3-500 characters'
  			redirect_to new_confession_path
  		end
  		if @confession.valid? 
  			redirect_to root_path
  		end
  	end

  	def about 
  	end

  	def edit
  		@confession = Confession.find(params[:id])
  	end

  	def update
  		@confession = Confession.find(params[:id])
  		@confession.update_attributes(confession_params)
  		redirect_to root_path
  	end

  	def destroy 
  		@confession = Confession.find(params[:id])
  		@confession.destroy
  		redirect_to root_path
  	end 

  	private 
  	def confession_params
  		params.require(:confession).permit(:saying, :author)
  	end
end
