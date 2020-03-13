class ConfessionsController < ApplicationController
	def index 
		@confession = Confession.all.reverse
	end

	def new
		@confession = Confession.new
  	end 

  	def create
  		Confession.create(confession_params) 
  		redirect_to root_path
  	end

  	private 
  	def confession_params
  		params.require(:confession).permit(:saying, :author)
  	end
end
