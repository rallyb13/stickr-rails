class PhotosController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @photo = Photo.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.new(photo_params)
    render :new
  end

  private
    def photo_params
      params.require(:photo).permit(:picture)
    end
end
