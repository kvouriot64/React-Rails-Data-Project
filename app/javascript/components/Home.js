import React from "react"
import PropTypes from "prop-types"
import {Link} from 'react-router-dom'

class Home extends React.Component {
  render () {
    return (
      <div>
        <h1>React Rails Data Project</h1>
        <p>This website acts as a hub for all kinds of information related to the star wars universe.
          It involves using Rails as the back end to grab the data from the source, seed it into the database
          and to render the data as json (the controllers are acting as an API of sorts.)
        </p>
        <p>
          React is being used on the front end to fetch the data from said controllers and render it to their own components.
          React Router is also being used to handle routing as opposed to rails. This allows me to reuse the same page and render
          new components rather than fetch a new page every single time a new tab is swapped.
        </p>
        <p>
          More information can be found in the <Link to='/About'>About</Link> page.
        </p>
      </div>
    );
  }
}

export default Home
