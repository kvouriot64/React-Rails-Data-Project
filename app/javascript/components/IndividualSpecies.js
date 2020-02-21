import React from "react"
import PropTypes from 'prop-types'
import {Link} from 'react-router-dom'

function IndividualSpecies(props) {
  return (
    <tr>
      <td><Link to={`/Species/${props.species.id}`}>{props.species.name}</Link></td>
      <td>{props.species.classification}</td>
      <td>{props.species.designation}</td>
    </tr>
  );
}

IndividualSpecies.propTypes = {
  species: PropTypes.object
}

export default IndividualSpecies
