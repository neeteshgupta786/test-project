class PlaysController < ApplicationController
  def new
    @play = Play.new
    @plays = Play.all

    prepare_hash
  end

  def create
    @play = Play.create(plays_params)
    @plays = Play.all
  end

  private

  def plays_params
    params.require(:play).permit(:timer_value, :url)
  end

  def prepare_hash
    # sample method of array is used to get 10 random elements from the array
    urls = Image.last.images.map{|image| url_for(image)}.sample(10)

    @req_hash, count = [{}, 0]
    10.times do |index|
      count = 0 if urls[count].nil?
      @req_hash[index + 1] = urls[count]
      count += 1
    end
  end
end
