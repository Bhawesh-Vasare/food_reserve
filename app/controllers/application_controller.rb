class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_sign_in_path_for(resource)
    case resource.role
    when 'admin'
      admin_dashboard_path
    when 'driver'
      driver_dashboard_path
    else
      user_dashboard_index_path
    end
  end

end
