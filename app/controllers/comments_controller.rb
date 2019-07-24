class CommentsController < ApplicationController
    def new
        @video = Video.find(params[:video_id])
        @comment = Comment.new
      end

def create
    # video = Video.find(params[:comment][:video_id])
    # Comment.create(params.require(:comment).permit(:content)
    # redirect_to videos_path
    comment = Comment.create(params.require(:comment).permit(:content, :video_id))
    comment.user_id = current_user.id
    comment.save
    redirect_to request.referer  
end
end