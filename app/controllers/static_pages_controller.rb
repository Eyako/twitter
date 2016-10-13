class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      # Micropost.new(user_id: current_user.id)
      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc)
    end
  end
end
