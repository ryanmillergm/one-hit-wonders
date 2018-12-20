class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    song = Song.find(params[:song_id])

    @cart.add_song(song.id)
    session[:cart] = @cart.contents
    count = @cart.count_of(song.id)

    flash[:success] = "You now have #{pluralize(count, "copy")} of #{song.title} in your cart."
    redirect_to songs_path
  end
end
