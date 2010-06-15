class HomesController < ApplicationController
  def homepage
    @upcoming_games = Game.public
  end
end
