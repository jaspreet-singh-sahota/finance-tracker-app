class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    @friendship = current_user.friendships.build(friend_id: friend.id)
    @friendship.save
    flash[:notice] = "You started following #{friend.full_name}"
    redirect_to my_friends_path
  end

  def destroy
    friend = User.find(params[:id])
    @friendship = current_user.friendships.where(friend_id: friend).first
    @friendship.destroy
    flash[:notice] = "Successfully unfollowed #{friend.full_name}"
    redirect_to my_friends_path
  end
end
