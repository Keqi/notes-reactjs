@Note = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/notes/#{ @props.note.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteNote @props.note

  render: ->
    <li>
      <a href="#">
        <i className="fa fa-file" id="red"></i>
        <i className="fa fa-file" id="yellow"></i>
        <i className="fa fa-file" id="blue"></i>
        <i className="fa fa-trash-o" onClick={@handleDelete}></i>
        <h2>{@props.note.title}</h2>
        <p>{@props.note.body}</p>
      </a>
    </li>
