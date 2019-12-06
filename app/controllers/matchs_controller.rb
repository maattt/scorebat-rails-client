class MatchsController < ApplicationController
  def index
    @matchs = JSON.parse HTTParty.get("https://www.scorebat.com/video-api/v1/").body
  end

  def show
    @match = JSON.parse(HTTParty.get("https://www.scorebat.com/video-api/v1/").body).select { |m| m["title"].parameterize == params[:id] }.first
  end
end
