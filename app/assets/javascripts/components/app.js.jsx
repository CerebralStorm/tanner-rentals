var Navbar = require('./navbar').Navbar;

console.log(Navbar);

window.App = React.createClass({

  render () {
      return (
        <div>
          <Navbar />
          {this.props.children}
        </div>
      )
    }
});
