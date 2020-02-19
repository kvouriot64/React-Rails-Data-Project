import React from "react"
import PropTypes from "prop-types"
class SearchBar extends React.Component {
  render () {
    return (
      <div>
        <input placeholder={this.props.placeholder}/>
        <input type="submit" />
      </div>
    );
  }
}

SearchBar.propTypes = {
  placeholder: PropTypes.string
}

export default SearchBar
