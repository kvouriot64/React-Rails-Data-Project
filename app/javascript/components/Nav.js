import React from "react"
import PropTypes from "prop-types"
import {BrowserRouter as Router, Route, Switch, Link} from 'react-router-dom'

import Category from './Category'
import SearchBar from './SearchBar'

class Nav extends React.Component {
  constructor() {
    super()
    this.state = {
      text: ''
    }
  }

  render () {
    const categoryComponents = this.props.categories.map(category =>
    <Category category={category} />)

    return (
      <div>
        <nav className="navbar navbar-expand-lg navbar-dark bg-primary">
          <h1><Link className="navbar-brand" to="/">Star Wars Data Hub</Link></h1>

          <ul className="navbar-nav mr-auto">
              {categoryComponents}
          </ul>

          <SearchBar />
        </nav>
      </div>
    );
  }
}

Nav.propTypes = {
  placeholder: PropTypes.string,
  categories: PropTypes.array
};

export default Nav
