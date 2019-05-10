class ChampionsController < ApplicationController
  def index
    render json:Champion.all
  end
end
