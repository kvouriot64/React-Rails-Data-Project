import React from "react"
import {Link} from 'react-router-dom'

function SearchResult(props) {
  return (
    <div className="card text-white bg-primary mb-3" styles="max-width: 20rem;">
      <div className="card-header">{props.header}</div>
      <div className="card-body">
        <h4 ><Link className="card-title" to={`/${props.modelName}/${props.id}`}>{props.data}</Link></h4>
      </div>
    </div>
  );
}

export default SearchResult