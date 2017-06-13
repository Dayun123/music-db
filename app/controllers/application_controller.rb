class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def search
    @search_param = params[:search]
    formatted_search_param = '%' + @search_param + '%'
    @artists = Artist.where("name LIKE ?", formatted_search_param)
    @songs = Song.where("name LIKE ?", formatted_search_param)
    @genres = Genre.where("name LIKE ?", formatted_search_param)
    # Client.where("orders_count = ?", params[:orders])
    # Song.where("name LIKE 'S%'")

  end

end
