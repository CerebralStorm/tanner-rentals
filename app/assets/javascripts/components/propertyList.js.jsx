var PropertyList = React.createClass({
  render: function() {
      var propertyNodes = this.props.data.map(function (data) {
        var property = data.property;
        return (
          <li>
            <Property key={property.id} name={property.name} address={property.address} city={property.city} state={property.state} />
          </li>
        );
      });
      return (
        <div className='nav nav-pills'>
          {propertyNodes}
        </div>
      );
    }
});