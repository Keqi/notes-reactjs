@Board = React.createClass
  getInitialState: ->
    notes: @props.notes

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
    </div>
