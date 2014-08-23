class VideosController < ApplicationController
  
  def index
      #@video = Video.find(1)
  end

  def show
    @category = Category.find(:params[:id])
    @videos = @category.videos
  end

  def search
    if params[:search_term]
      @videos = Video.search_by_title(params[:search_term])
    else
      @videos = Video.all.order("created_at DESC")
    end
  end
end
