class PageController < ApplicationController
	def index
		@news = News.all
	end
	def about
		@aboutwhat=params[:what]
	end
	def mission
		
	end
	def witness

	end

	def schedule

	end
	def contact

	end
	def ckeditor

	end
end
