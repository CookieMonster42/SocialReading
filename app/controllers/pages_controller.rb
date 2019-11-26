class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @groups = Group.all
    @memberships = Membership.all
    @comments = Comment.all
    @books = Book.all
    @languages = Language.all
    @users = User.all
  end
end
