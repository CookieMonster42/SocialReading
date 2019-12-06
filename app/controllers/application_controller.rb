class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end
end
