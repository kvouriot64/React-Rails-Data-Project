import React from "react"
import PropTypes from "prop-types"
import {BrowserRouter as Router, Route, Switch, Link} from 'react-router-dom'

import Category from './Category'

class Nav extends React.Component {
  render () {

    const categoryComponents = this.props.categories.map(category =>
    <Category category={category} />)

    return (
      <div>
        <nav className="navbar navbar-expand-lg navbar-dark bg-primary">
          <Link to="/"><h1 className="navbar-brand">Star Wars Data Hub</h1></Link>

          <ul className="navbar-nav mr-auto">
              {categoryComponents}
          </ul>

          <form className="form-inline my-2 my-lg-0">
            <input className="form-control mr-sm-2" placeholder={this.props.placeholder} />
            <input className="btn btn-secondary my-2 my-sm-0" type="submit"/>
          </form>
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
