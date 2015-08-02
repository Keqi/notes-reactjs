@Board = React.createClass
  getInitialState: ->
    notes: @props.notes
    hex: @props.hex

  deleteNote: (note) ->
    notes = @state.notes.slice()
    index = notes.indexOf note
    notes.splice index, 1
    @replaceState notes: notes

  updateColor: (note, colour) ->
    notes = @state.notes.slice()
    notes = _.map(notes, (n) ->
      n.colour = colour if n == note
      n
    )
    @replaceState notes: notes

  addNote: (note) ->
    notes = @state.notes.slice()
    notes.push note
    @setState notes: notes

  render: ->
    <div className="board">
      <div className="notes">
        <ul>
          <NewNote/>
          {
            @state.notes.map (note) =>
              <Note note={note} handleDeleteNote={@deleteNote} handleUpdateColor={@updateColor}/>
          }
        </ul>
      </div>
      <AddNoteModal hex={@state.hex} handleNewNote={@addNote}/>
    </div>
