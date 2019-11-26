class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @groups = Group.all
    if params[:query].present?
      if params[:range].values.first.to_i.zero?
        range = 25
      else
        range = params[:range].values.first.to_i
      end
      @groups = Group.near(" #{params[:query]}", range)
    else
      @groups = Group.all
    end
  end
end
