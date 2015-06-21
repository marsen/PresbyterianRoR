class NewsController < ApplicationController
	def index
		@news_list = News.all
	end
	def new
		@news = News.new
	end
	def create

	end

	def show

	end
	def edit

	end
end
