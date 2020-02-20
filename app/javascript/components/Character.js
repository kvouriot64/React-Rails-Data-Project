import React from "react"
import PropTypes, { string } from "prop-types"

class Character extends React.Component {

  componentDidMount() {
    const characters = fetch('/Characters.json')
                        .await(res => res.json())
  }

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

Character.propTypes = {
name: PropTypes.string,
mass: PropTypes.string,
heigh: PropTypes.string,
eye_color: PropTypes.string,
hair_color: PropTypes.string,
birth_year: PropTypes.string,
gender: PropTypes.string
}

export default Character
