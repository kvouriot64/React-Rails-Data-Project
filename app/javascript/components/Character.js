import React from "react"
import PropTypes, { string } from "prop-types"

class Character extends React.Component {



  render () {
    return (
      <div>
        <h2>{this.props.name}</h2>
        <p>{this.props.height}</p>
        <p>{this.props.mass}</p>
        <p>{this.props.hair_color}</p>
        <p>{this.props.skin_color}</p>
        <p>{this.props.eye_color}</p>
      </div>
    );
  }
}

Character.PropTypes = {
name: string,
mass: string,
heigh: string,
eye_color: string,
hair_color: string,
birth_year: string,
gender: string
}

export default Character
