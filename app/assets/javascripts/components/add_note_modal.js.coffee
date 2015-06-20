@AddNoteModal = React.createClass
  render: ->
    <div className="modal fade" id="add-note">
      <div className="modal-dialog">
        <div className="modal-content">
          <form>
            <div className="modal-body">
              <div className="form-group">
                <input className="form-control" type="text-field" placeholder="Title..."></input>
              </div>

              <div className="form-group">
                <textarea className="form-control" type="text-field" placeholder="My note..."></textarea>
              </div>
            </div>
            <div className="modal-footer">
              <button type="submit" className="btn btn-default">Add note</button>
            </div>
          </form>
        </div>
      </div>
    </div>
