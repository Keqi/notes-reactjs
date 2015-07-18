@Note = React.createClass
  getInitialState: ->
    note: @props.note
    colours:
      red: "#F2361D"
      blue: "#1DB6F2"
      yellow: "#ffc"
      purple: "#E88BD7"

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
      data: { note: { colour: @state.colours[e.target.id] } }
      dataType: 'JSON'

      @setState
        note:
          id: @state.note.id
          title: @state.note.title
          body: @state.note.body
          colour: @state.colours[e.target.id]

  render: ->
    <li>
      <a href="#" style={{background: @state.note.colour;}}>
        <i className="fa fa-file" id="red" onClick={@updateColor}></i>
        <i className="fa fa-file" id="yellow" onClick={@updateColor}></i>
        <i className="fa fa-file" id="blue" onClick={@updateColor}></i>
        <i className="fa fa-file" id="purple" onClick={@updateColor}></i>
        <i className="fa fa-trash-o" onClick={@handleDelete}></i>
        <h2>{@state.note.title}</h2>
        <p>{@state.note.body}</p>
      </a>
    </li>
