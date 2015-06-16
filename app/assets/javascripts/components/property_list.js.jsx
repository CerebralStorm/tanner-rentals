var PropertyList = React.createClass({
  render: function() {
      var propertyNodes = this.props.data.map(function (data) {
        var property = data.property;
        return (
          <Property key={property.id} name={property.name} address={property.address} city={property.city} state={property.state} />
        );
      });
      return (
        <div className="propertyList">
          {propertyNodes}
        </div>
      );
    }
});