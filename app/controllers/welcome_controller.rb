class WelcomeController < ApplicationController
  def index
    @songs = Song.all.shuffle
  end
end
