class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  private

  def render_error_404  
  	render file: "public/404.html", status: 404
  end 

  def render_error_403
	render file: "public/403.html", status: 404
	#render text: "Доступ только для администраторов магазина", status: 403 unless current.admin == true
	#render text: "Доступ только для администраторов магазина", status: 403 unless params[:admin]
  end 

  def check_if_admin
	render_error_403 unless params[:admin]
  end

end
