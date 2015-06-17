class BoardsController < ApplicationController
  def show
    @board = Board.find_by(hex: params[:hex])
    @notes = @board ? @board.notes : []
  end

  def index
  end
end
