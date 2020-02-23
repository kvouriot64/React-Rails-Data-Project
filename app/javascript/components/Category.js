import React from "react"
import {Link} from 'react-router-dom'

function Category(props) {
    return (
      <li >
        <Link className="nav-item nav-link" to={props.category}>{props.category}</Link>
      </li>
  );
}

export default Category