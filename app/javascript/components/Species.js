import React, {useEffect, useState} from "react"
import IndividualSpecies from './IndividualSpecies'

function Species() {
  useEffect(() => {
    fetchSpecies()
  }, [])

  const [species, setSpecies] = useState([])

  const fetchSpecies = async () => {
    const res = await fetch('/api/species/index')
    const species = await res.json()
    setSpecies(species)
  }

  const data = species.map(species => <IndividualSpecies species={species} />)

  return (
    <div>
      <table className="table table-hover">
      <thead>
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Classification</th>
          <th scope="col">Designation</th>
        </tr>
      </thead>
      <tbody>
        {data}
      </tbody>
      </table>
    </div>
  );
}

export default Species
