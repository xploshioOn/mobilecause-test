class NotesController < ApplicationController
  before_action :logged_in_user, only: [:create]
  before_action :load_notes, only: :index

  def index
    @note = Note.new(user_id: current_user&.id)
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to  notes_path, notice: "created"
    else
      load_notes
      render action: 'index', status: :unprocessable_entity
    end
  end

  private

    def note_params
      params.require(:note).permit(:user_id, :content)
    end

    def load_notes
      @notes = Note.all
    end

end
