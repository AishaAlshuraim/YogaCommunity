class CommentsController < ApplicationController
    def new
        @video = Video.find(params[:video_id])
        @comment = Comment.new
      end
end
