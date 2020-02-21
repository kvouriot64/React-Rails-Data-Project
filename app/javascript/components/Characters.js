import React from "react"
import Character from './Character'

class Characters extends React.Component {

  constructor() {
    super()
    this.state = {
      characters: []
    }
  }

  componentDidMount() {
    fetch('/api/characters/index')
      .then(res => res.json())
      .then(chars => this.setState({ characters: chars }))
  }

  render () {
    const data = this.state.characters.map(character => <Character character={character} />)
    return (
        <div>
          <table className="table table-hover">
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Height (cm)</th>
              <th scope="col">Mass (kg)</th>
              <th scope="col">Hair Colour</th>
              <th scope="col">Skin Colour</th>
              <th scope="col">Eye Colour</th>
              <th scope="col">Birth Year</th>
              <th scope="col">Gender</th>
            </tr>
          </thead>
          <tbody>
            {data}
          </tbody>
          </table>
        </div>
    );
  }
}

export default Characters
