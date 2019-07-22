class CommentsController < ApplicationController
    def new
        @video = Video.find(params[:video_id])
        @comment = Comment.new
      end

def create
    puts params
    video = Video.find(params[:comment][:video_id])
    Comment.create(params.require(:comment).permit(:content)
    redirect_to video
  end
end