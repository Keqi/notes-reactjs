class BoardsController < ApplicationController
  def show
    @board = Board.find_by(hex: params[:hex])
    binding.pry
    @notes = @board ? @board.notes : []
  end

  def index
  end
end
