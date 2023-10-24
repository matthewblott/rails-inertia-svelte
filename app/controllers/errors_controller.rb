class ErrorsController < ApplicationController
  def forbidden 
    render inertia: 'errors/402'
  end

  def not_found
    render inertia: 'errors/404'
  end

  def internal_server_error
    render status: 500
  end
  
  # Add the following setting to development.rb for testing:
  # config.consider_all_requests_local = true  
end
