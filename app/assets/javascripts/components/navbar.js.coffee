@Navbar = React.createClass
  render: ->
    <nav className="navbar navbar-default">
      <div className="container-fluid">
        <div className="navbar-header">
          <button type="button" className="btn btn-default navbar-btn" data-toggle="modal" data-target="#add-note">Add note</button>
        </div>
      </div>
    </nav>
