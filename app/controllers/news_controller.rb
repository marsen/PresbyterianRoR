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
	def update
		@news = News.find(params[:id])
		@news.update(news_params)

		redirect_to :action => :show, :id => @news
	end
	def show
		@news = News.find(params[:id])
	end
	def edit
		@news = News.find(params[:id])
	end

	private

	def news_params
		params.require(:news).permit(:title, :content,:photo)		
	end
end
