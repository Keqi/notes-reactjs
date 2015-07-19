@Note = React.createClass
  getInitialState: ->
    note: @props.note
    colours: Colours.data();

  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/notes/#{ @props.note.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteNote @props.note

  updateColor: (e) ->
    $.ajax
      method: 'PUT'
      url: "/notes/#{ @state.note.id }"
      data: { note: { colour: e.target.id } }
      dataType: 'JSON'

      @setState
        note:
          id: @state.note.id
          title: @state.note.title
          body: @state.note.body
          colour: e.target.id

  render: ->
    <li>
      <a href="#" style={{background: @state.note.colour;}}>
        {
          @state.colours.validColours(@state.note.colour).map (colour) =>
            <i className="fa fa-file" id={colour} style={{color: colour;}} onClick={@updateColor}></i>
        }
        <i className="fa fa-trash-o" onClick={@handleDelete}></i>
        <h2>{@state.note.title}</h2>
        <p>{@state.note.body}</p>
      </a>
    </li>
