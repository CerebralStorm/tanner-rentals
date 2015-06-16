var Property = React.createClass({
  propTypes: {
    name: React.PropTypes.node,
    address: React.PropTypes.node,
    city: React.PropTypes.node,
    state: React.PropTypes.node,
    zip: React.PropTypes.node,
    description: React.PropTypes.node
  },

  render: function() {
    return (
      <div>
        <div>Name: {this.props.name}</div>
        <div>Address: {this.props.address}</div>
        <div>City: {this.props.city}</div>
        <div>State: {this.props.state}</div>
        <div>Zip: {this.props.zip}</div>
        <div>Description: {this.props.description}</div>
      </div>
    );
  }
});
