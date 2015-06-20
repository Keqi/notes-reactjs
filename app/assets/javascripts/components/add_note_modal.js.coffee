@AddNoteModal = React.createClass
  getInitialState: ->
    title: ''
    body: ''
    hex: @props.hex

  handleChange: (e) ->
    target = e.target
    if target.value.length < 255
      @setState "#{ target.name }": target.value


  handleSubmit: (e) ->
    e.preventDefault()
    console.log(e.target)
    $.post '/notes', { hex: @state.hex, note: { title: @state.title, body: @state.body } }, (data) =>
      @props.handleNewNote data
      @setState @getInitialState()
    , 'JSON'

    $('#add-note').modal('hide')

  render: ->
    <div className="modal fade" id="add-note">
      <div className="modal-dialog">
        <div className="modal-content">
          <form onSubmit={@handleSubmit}>
            <div className="modal-body">
              <div className="form-group">
                <input className="form-control" value={@state.title} name="title" type="text-field" placeholder="Title..." onChange={@handleChange}></input>
              </div>

              <div className="form-group">
                <textarea className="form-control" value={@state.body} name="body" placeholder="My note..." rows="8" onChange={@handleChange}></textarea>
              </div>
            </div>
            <div className="modal-footer">
              <button type="submit" className="btn btn-default">Add note</button>
            </div>
          </form>
        </div>
      </div>
    </div>
