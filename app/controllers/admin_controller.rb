class AdminController < ApplicationController
	def index
		@is_admin = to_bool(session[:is_admin])

	end
	def login
		admin = Admin.where(:account => 'admin').first()
		session[:is_admin] = admin.password == params[:password]
		redirect_to :action => :index
	end
	def logout
		session[:is_admin] = false
		redirect_to :action => :index
	end
end
