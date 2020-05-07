class ImagesController < ApplicationController
  def index
  end

  def create
    Image.create(images: params[:images])
    redirect_to root_path, flash: { success: "Images uploaded successfully" }
  end
end
