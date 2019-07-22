class PagesController < ApplicationController
  before_action :authenticate_user!, only: :private_page
  def home
    @videos = Video.all
  end

  def private_page
    @email = current_user.email
end
end
