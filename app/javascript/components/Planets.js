import React from "react"
import PropTypes from "prop-types"
import Planet from './Planet'

class Planets extends React.Component {
  constructor() {
    super()
    this.state = {
      planets: []
    }
  }

  componentDidMount() {
    fetch('/api/planets/index')
    .then(res => res.json())
    .then(planets => this.setState({ planets }))
  }

  render () {
    const data = this.state.planets.map(planet => <Planet planet={planet} />)
    return (
      <div>
          <table className="table table-hover">
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Rotation Period</th>
              <th scope="col">Orbital Period</th>
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

export default Planets
