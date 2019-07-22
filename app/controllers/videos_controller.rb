class VideosController < ApplicationController
    def index
        @videos = Video.all  

    end
    def show
        @video = Video.find(params[:id])
      end
    
    def new
        @video = Video.new
      end
    
    def create
        Video.create(params.require(:video).permit(:title, :des, :url))
        redirect_to videos_path
      end
    
    def edit
        @video = Video.find(params[:id])
      end

    def update
        video = Video.find(params[:id])
        video.update(params.require(:video).permit(:title, :des, :url))
          
        redirect_to video
      end
    
    def destroy
        Video.find(params[:id]).destroy
      
        redirect_to videos_path
      end
end

