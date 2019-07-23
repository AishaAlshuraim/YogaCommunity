class VideosController < ApplicationController
    def index
        @videos = Video.all  

    end
    def show
        @video = Video.find(params[:id])
      end
    
    def new
        if current_user.admin
            @video = Video.new
        else
             redirect_to videos_path, :notice => "You are not admin"
        end
    end
    
    def create
            Video.create(params.require(:video).permit(:title, :des, :url))
            redirect_to videos_path     
    end
    
    def edit
        if current_user.admin
        @video = Video.find(params[:id])
    else
        redirect_to videos_path, :notice => "You are not admin"
    end
    end

    def update
        if current_user.admin
        video = Video.find(params[:id])
        video.update(params.require(:video).permit(:title, :des, :url)) 
        redirect_to video
    else
        redirect_to videos_path, :notice => "You are not admin"
    end
        
    end
    
    def destroy
        if current_user.admin
        Video.find(params[:id]).destroy
        redirect_to videos_path
    else
        redirect_to videos_path, :notice => "You are not admin"
    end
    end
end

