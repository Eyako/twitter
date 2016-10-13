class FavoritesController < ApplicationController
  def like
      
    micropost = Micropost.find(params[:micropost_id])
    like = current_user.favarites.build(micropost_id: micropost.id)
    like.save
    redirect_to root_path
    
  end

  def unlike
    micropost = Micropost.find(params[:micropost_id])
    like = current_user.favarites.find_by(micropost_id: micropost.id)
    like.destroy
    redirect_to root_path
    
  end
end
