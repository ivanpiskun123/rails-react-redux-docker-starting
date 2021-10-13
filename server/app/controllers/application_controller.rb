class ApplicationController < ActionController::Base
    before_action :authenticate_api_v1_user!
end
