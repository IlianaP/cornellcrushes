class ConfessionsController < ApplicationController
	def index 
		@confession = Confession.order("RANDOM()").first
	end
end
