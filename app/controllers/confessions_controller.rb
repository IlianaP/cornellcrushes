class ConfessionsController < ApplicationController
	def index 
		@confession = Confession.all
	end

	def new
		@confession = Confession.new
  	end
end
