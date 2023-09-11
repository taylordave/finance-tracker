class FriendshipsController < ApplicationController

  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "#{friend.email} successfully added to your friends list"
    else
      flash[:alert] = "Something went wrong with the request"
    end
    redirect_to my_friends_path
  end

  def destroy
    Friendship.find_by(user: current_user, friend: params[:id]).destroy
    flash[:notice] = "Stopped following friend"
    redirect_to my_friends_path
  end

end
