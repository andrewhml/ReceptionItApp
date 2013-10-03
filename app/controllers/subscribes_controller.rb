class SubscribesController < ApplicationController
	#This method helps us create a new picture
	def new
		@subscribe = Subscribe.new
	end

	def create
		@subscribe = Subscribe.create(params[:subscribe]) 
		redirect_to subscribe_path(@subscribe)

	end

	def index
	end

	def show
		render :text => params[:id]
	end

	def destroy
	end

	def edit
	end

	def update
	end
end
