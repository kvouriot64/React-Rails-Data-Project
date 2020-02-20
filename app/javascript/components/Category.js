import React from "react"
import PropTypes from "prop-types"
import {Link} from 'react-router-dom'

class Category extends React.Component {
  render () {
    return (
      <Link to={this.props.category}>
        <li className="nav-item nav-link">{this.props.category}</li>
      </Link>
    );
  }
}

Category.propTypes = {
  category: PropTypes.string
};

export default Category