class NotesController < ApplicationController
  def create
    @board = Board.find_by(hex: params[:hex])
    @note = Note.new(note_params)
    @note.board = @board

    if @note.save
      render json: @note
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
