class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @groups = Group.all
    if params[:query].present?
      @groups = Group.near(" #{params[:query]}", 10)
      # if @groups.any?
      #   @groups
      # else
      #   @groups =
    else
      @groups = Group.all
    end
  end
end
