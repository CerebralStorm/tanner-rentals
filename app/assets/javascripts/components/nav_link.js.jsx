var NavLink = React.createClass({
  getInitialState: function() {
    return {liked: false};
  },
  handleClick: function(event) {
    this.setState({liked: !this.state.liked});
  },
  render: function() {
    if (this.state.liked) {
      text = "I like it."
    } else {
      text = "I Don't like it."
    }
    return (
      <a onClick={this.handleClick}>
        {text} {this.props.name}
      </a>
    );
  }
});
