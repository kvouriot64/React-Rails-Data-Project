import React from "react"
import PropTypes from "prop-types"

class Category extends React.Component {
  render () {
    return (
      <li className="nav-item"><a className="nav-link" href={this.props.category}>{this.props.category}</a></li>
    );
  }
}

Category.propTypes = {
  category: PropTypes.string
};

export default Category