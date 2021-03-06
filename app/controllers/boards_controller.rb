class BoardsController < ApplicationController
  def show
    @board = Board.find_by(hex: params[:id])
    @notes = @board ? @board.notes.order("created_at ASC") : []
  end

  def index
  end

  def create
    @board = Board.create!
    redirect_to @board
  end
end
