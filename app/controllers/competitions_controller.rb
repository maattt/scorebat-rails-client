class CompetitionsController < ApplicationController
  def index
    @competitions = JSON.parse(HTTParty.get("https://www.scorebat.com/video-api/v1/").body).map { |m| m["competition"] }.uniq.sort_by { |c| c["name"] }
  end

  def show
    @matchs = JSON.parse(HTTParty.get("https://www.scorebat.com/video-api/v1/").body).select { |m| m["competition"]["id"].to_i == params["id"].to_i }
    @competition = @matchs.first["competition"]
  end
end
