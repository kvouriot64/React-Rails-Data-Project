import React from "react"
import PropTypes from "prop-types"
import {Link} from 'react-router-dom'

function Character(props) {
    return (
      <tr>
        <td><Link to={`/Characters/${props.character.id}`}>{props.character.name}</Link></td>
        <td>{props.character.height}</td>
        <td>{props.character.mass}</td>
        <td>{props.character.hair_color}</td>
        <td>{props.character.skin_color}</td>
        <td>{props.character.eye_color}</td>
        <td>{props.character.birth_year}</td>
        <td>{props.character.gender}</td>
      </tr>
    )

}

Character.propTypes = {
  character: PropTypes.object
};

export default Character
