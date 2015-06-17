@Board = React.createClass
  getInitialState: ->
    notes: @props.notes

  render: ->
    <div className="board">
      {
        @state.notes.map (note) ->
          <Note id={note.id} note={note}/>
      }
    </div>
