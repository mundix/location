class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def init_google_places
    @client = GooglePlaces::Client.new('AIzaSyDpbSkYMrPiBfDApjWSH04B1XDlt3k18xg')
    @client.spots_by_query('Gazcue Santo Domingo')
  end

end
