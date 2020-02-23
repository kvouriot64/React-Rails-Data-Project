import React from "react"
import Character from './Character'
import { Pagination } from 'semantic-ui-react'

class Characters extends React.Component {

  constructor() {
    super()
    this.state = {
      characters: [],
      page: null,
      pages: null
    }
  }

  handlePage = (e, {activePage}) => {
    let gotoPage = {activePage}
    let pageNumber = gotoPage.activePage

    fetch(`/api/characters/index/?page=${pageNumber}`)
    .then(res => res.json())
    .then(res => this.setState({
      characters: res.characters,
      page: res.page,
      pages: res.pages
    }))
  }

  componentDidMount() {
    fetch('/api/characters/index/')
      .then(res => res.json())
      .then(res => this.setState({
        characters: res.characters,
        page: res.page,
        pages: res.pages
      }))
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
            <ul className="pagination pagination-lg">
              <li className="page-item">
                <Pagination
                className="page-link"
                onPageChange={this.handlePage}
                siblingPage="4"
                boundaryRange="3"
                defaultActivePage={this.state.page}
                totalPages={this.state.pages}
                />
              </li>
          </ul>
        </div>
    );
  }
}

export default Characters
