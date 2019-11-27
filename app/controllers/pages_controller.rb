class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @groups = Group.all
    if params[:query].present?
      # if params[:range].values.first.to_i.zero?
      #   range = 50
      # else
      #   range = params[:range].values.first.to_i
      # end
      @groups = Group.near(" #{params[:query]}", 50)
      redirect_to groups_path(params[:query])
    end
  end
end
