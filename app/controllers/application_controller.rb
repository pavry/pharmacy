class ApplicationController < ActionController::Base
	
	protected

	def render_404
  		render :file => 'public/404.html', :status => 404
	end

end


