class SongsController < ApplicationController

  

  private
    def song_params
     params.require(:song).permit(:title)
    end
end
