var NavLinks = React.createClass({
  getInitialState: function() {
    return {linked: this.props.navLinks[0]};
  },
  handleClick: function(i) {
   var link = this.props.navLinks[i];
   this.setState({linked: link});
  },
  render: function() {
    return (
      <div>
      <div className='col-sm-4'>
        <ul className='nav nav-pills'>
          {this.props.navLinks.map(function(item, i) {
            return (
              <li onClick={this.handleClick.bind(this, i)} key={i}>{item}</li>
            );
          }, this)}
        </ul>
      </div>
      <div className='col-sm-8'>
        {this.state.linked}
      </div>
      </div>
    );
  }
});