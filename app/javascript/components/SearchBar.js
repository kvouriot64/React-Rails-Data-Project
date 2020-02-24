import React from "react"

class SearchBar extends React.Component {
  constructor() {
    super()
    this.state = {
      query: '',
      results: []
    }

    this.handleChange = this.handleChange.bind(this)
  }

  handleChange(event) {
    const {value} = event.target
    this.setState({ query: value})
  }

  render () {
    return (
      <div>
        <form action={`/Search/${this.state.query}`} className="form-inline my-2 my-lg-0">
            <input
            type="text"
            className="form-control mr-sm-2"
            placeholder="Search"
            value={this.state.query}
            onChange={this.handleChange}
            />
            <input className="btn btn-secondary my-2 my-sm-0" type="submit"/>
          </form>
      </div>
    );
  }
}

export default SearchBar