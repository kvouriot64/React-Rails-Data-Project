import React from "react"
import PropTypes from "prop-types"
import {Link} from 'react-router-dom'

function Planet(props) {
    return (
      <tr>
        <td><Link to={`/Planets/${props.planet.id}`}>{props.planet.name}</Link></td>
        <td>{props.planet.rotation_period}</td>
        <td>{props.planet.orbital_period}</td>
      </tr>
    )
}

Planet.propTypes = {
  planet: PropTypes.object
}

export default Planet