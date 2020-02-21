import React from "react"
import PropTypes from "prop-types"
import {Link} from 'react-router-dom'

class Category extends React.Component {
  render () {
    return (

        <li >
          <Link className="nav-item nav-link" to={this.props.category}>{this.props.category}</Link>
        </li>

    );
  }
}

Category.propTypes = {
  category: PropTypes.string
};

export default Category