class ApplyToBlogsController < ApplicationController
  def create
    apply = current_user.apply_to_blogs.create(blog_id: params[:blog_id])
    redirect_to blogs_url, notice: "#{apply.blog.user.name}さんのブログをお気に入り登録しました"
  end
  def destroy
    apply = current_user.apply_to_blogs.find_by(id: params[:id]).destroy
    redirect_to blogs_url, notice: "#{apply.blog.user.name}さんのブログをお気に入り解除しました"
  end
end
