class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  inertia_share user: -> { current_user }

end
