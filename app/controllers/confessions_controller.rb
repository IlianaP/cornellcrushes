class ConfessionsController < ApplicationController
	def index 
		@confession = Confession.all.reverse
	end

	def new
		@confession = Confession.new
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

  	private 
  	def confession_params
  		params.require(:confession).permit(:saying, :author)
  	end
end
