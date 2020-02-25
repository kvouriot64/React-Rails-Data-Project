import React, {useState, useEffect} from "react"
import {useParams} from 'react-router-dom'
import {Link} from 'react-router-dom'

function SpeciesDetail() {
  useEffect(() => {
    fetchData()
  }, [])

  const [species, setSpecies] = useState({})
  const [planet, setPlanet] = useState({})

  const {id} = useParams()

  const fetchData = async () => {
    const res = await fetch(`/api/species/show/${id}`)
    const species = await res.json()
    setSpecies(species)

    const response = await fetch(`/api/planets/show/${species.Planet_id}`)
    const planet = await response.json()
    setPlanet(planet)
  }

  return (
    <div className="container">
      <h1>Species: {species.name}</h1>
      <p>Designation: {species.designation}</p>
      <p>Average Height: {species.average_height}</p>
      <p>Skin Colours: {species.skin_colors}</p>
      <p>Hair Colours: {!species.hair_colors ? 'N/A' : species.hair_colors}</p>
      <p>Eye Colours: {species.eye_colors}</p>
      <p>Average Lifespan: {species.average_lifespan}</p>
      <p>Language: {species.language}</p>
      <p>Homeworld: <Link to={`/Planets/${planet.id}`}>{planet.name}</Link></p>
    </div>
  );
}

export default SpeciesDetail
