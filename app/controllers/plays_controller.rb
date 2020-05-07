class PlaysController < ApplicationController
  def new
    @play = Play.new
    @plays = Play.all

    prepare_hash
  end

  def create
    @play = Play.create(plays_params)
  end

  private

  def plays_params
    params.require(:play).permit(:timer_value, :url)
  end

  def prepare_hash
    urls = Image.last.images.map{|image| url_for(image)}
    @req_hash, count = [{}, 0]
    10.times do |index|
      count = 0 if urls[count].nil?
      @req_hash[index + 1] = urls[count]
      count += 1
    end
  end
end
