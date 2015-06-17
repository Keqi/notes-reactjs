@Note = React.createClass
  render: ->
    <div className="panel panel-default">
      <div className="panel-body">
        <p>{@props.note.body}</p>
      </div>
    </div>
