import React from "react"
import PropTypes from "prop-types"
import Category from './Category'

class Nav extends React.Component {
  render () {
    const categoryComponents = this.props.categories.map(category =>
    <Category  category={category} />)

    return (
      <nav className="navbar navbar-expand-lg navbar-dark bg-primary">
        <h1><a className="navbar-brand" href="/">Star Wars Data Hub</a></h1>

        <ul className="navbar-nav mr-auto">
          {categoryComponents}
        </ul>

        <form className="form-inline my-2 my-lg-0">
          <input className="form-control mr-sm-2" placeholder={this.props.placeholder} />
          <input className="btn btn-secondary my-2 my-sm-0" type="submit"/>
        </form>
      </nav>
    );
  }
}

Nav.propTypes = {
  placeholder: PropTypes.string,
  categories: PropTypes.array
};
export default Nav
