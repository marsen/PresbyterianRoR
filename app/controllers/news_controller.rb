class NewsController < ApplicationController
	def index
		@news_list = News.all
	end
	def new
		@news = News.new
	end
	def create
		@news = News.new(news_params)
		@news.save

		redirect_to :action => :index

	end

	def show

	end
	def edit

	end

	private

	def news_params
		params.require(:news).permit(:title, :content)
	end
end
