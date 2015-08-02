@Note = React.createClass
  getInitialState: ->
    colours: Colours.data();

  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/notes/#{ @props.note.id }"
      data: { hex: @props.hex }
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteNote @props.note

  updateColor: (e) ->
    $.ajax
      method: 'PUT'
      url: "/notes/#{ @props.note.id }"
      data: { hex: @props.hex, note: { colour: e.target.id } }
      dataType: 'JSON'
      success: (data) =>
        @props.handleUpdateColor @props.note, data.colour

  render: ->
    <li>
      <a href="#" style={{background: @props.note.colour;}}>
        {
          @state.colours.validColours(@props.note.colour).map (colour) =>
            <i className="fa fa-file" id={colour} style={{color: colour;}} onClick={@updateColor}></i>
        }
        <i className="fa fa-trash-o" onClick={@handleDelete}></i>
        <h2>{@props.note.title}</h2>
        <p>{@props.note.body}</p>
      </a>
    </li>
