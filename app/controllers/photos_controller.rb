class PhotosController < ApplicationController
    before_action :authenticate_user!

    def create
        @place =Place.find(params[:place_id])
        @place.photos.create(photo_params(user: current_user))
        render json: {picture: photo_params}
        redirect_to place_path(@place)
    end

    private

    def photo_params
        photo_params.require(:picture).permit(:caption)
    end
end
