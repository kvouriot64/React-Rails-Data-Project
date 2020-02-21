import React from "react"
import PropTypes from "prop-types"
class About extends React.Component {
  render () {
    return (
      <div>
        <div className="jumbotron">
          <h1 className="display-3">About the data</h1>
          <p className="lead">The data presented here is pulled from 2 sources - the <a href="https://www.swapi.co">Star Wars Api</a> and
        the Faker ruby gem. The data is persisted into 5 tables called Characters, Foods, Planets, Films, and Species.</p>
        </div>
        <div className="container">
          <hr className="my-4"/>
          <h3>Each table carries a many-to-many association with at least 1 other table which is resolved in ActiveRecord via bridging models.</h3>
        </div>
      </div>
    );
  }
}

export default About