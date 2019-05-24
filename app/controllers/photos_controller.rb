class PhotosController < ApplicationController

before_action :authenticate_user!

    def create
        @photo = Photo.find(params[:photo_id])
        @photo.captions.create(caption_params)
        redirect_to photo_path(@photo)
    end 

private

    def photo_params
        params.require(:photo).permit(:caption)
    end
end