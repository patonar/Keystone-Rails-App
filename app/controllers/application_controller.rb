class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Devise redirects
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      dashboard_path
    else
      super
    end
  end
  
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404.html", :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
 
end
