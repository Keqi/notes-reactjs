class NotesController < ApplicationController
  def create
    @board = Board.find_by(hex: params[:hex])
    @note = Note.new(note_params)
    @note.board = @board

    if @note.save
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Note.find(params[:id]).destroy
    head :no_content
  end

  private

  def note_params
    params.require(:note).permit(:title, :body, :colour)
  end
end
