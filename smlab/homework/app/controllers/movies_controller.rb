class MoviesController < ApplicationController
  def index
  end

  def lookup
    title = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{title}"
    html = HTTParty.get(url)
    @info = JSON(html)
  end
end
