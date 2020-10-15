class ApplicationController < ActionController::Base
before_action :storong_parameter, if: :devise_controller?
  


private

def storong_parameter
  devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :profile, :occupation, :position])
end

end
