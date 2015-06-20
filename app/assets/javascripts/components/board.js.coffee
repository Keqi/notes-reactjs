@Board = React.createClass
  getInitialState: ->
    notes: @props.notes
    hex: @props.hex

  addNote: (note) ->
    notes = @state.notes.slice()
    notes.push note
    @setState notes: notes

  render: ->
    <div className="board">
      <div className="notes">
        <ul>
          {
            @state.notes.map (note) ->
              <Note id={note.id} note={note}/>
          }
        </ul>
      </div>
      <AddNoteModal hex={@state.hex} handleNewNote={@addNote}/>
    </div>
