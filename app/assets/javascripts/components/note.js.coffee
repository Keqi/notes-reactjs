@Note = React.createClass
  render: ->
    <li>
      <a href="#">
        <h2>{@props.note.title}</h2>
        <p>{@props.note.body}</p>
      </a>
    </li>
