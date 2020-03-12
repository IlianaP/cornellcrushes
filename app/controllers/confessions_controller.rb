class ConfessionsController < ApplicationController
	def index 
		@confession = Confession.all
	end
end
