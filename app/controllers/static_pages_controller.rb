class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
    # Micropost.new(user_id: current_user.id)
  end
end
