class ImagesController < ApplicationController
  def index
  end

  def create
    Image.create(images: params[:images])
  end
end
