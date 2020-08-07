class RelationshipsController < ApplicationController
  respond_to? :js
  def create
    if user_signed_in?
      # binding.pry
      @user = User.find(params[:relationship][:followed_id])
      if current_user.follow!(@user)
        matching_member = @user
        MatchingMailer.matching_mail(matching_member).deliver
      else
        informed_members != @user.map(&:user)
        MatchingMailer.unmatching_mail(informed_members).deliver
      end
      redirect_to complete_blogs_path
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
  end
end
