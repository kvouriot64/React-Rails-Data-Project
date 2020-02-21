import React from "react"
import {Link} from 'react-router-dom'

function Film(props) {
  return (
    <tr>
      <td><Link to={`/Films/${props.film.id}`}>{props.film.title}</Link></td>
      <td>{props.film.episode_id}</td>
      <td>{props.film.director}</td>
      <td>{props.film.producer}</td>
    </tr>
  );
}

export default Film
