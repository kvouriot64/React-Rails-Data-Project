import React, {useEffect, useState} from "react"
import {useParams} from 'react-router-dom'

function PlanetDetail() {
  useEffect(() => {
    fetchPlanet()
  }, [])

  const [planet, setPlanet] = useState({})

  const { id } = useParams()

  const fetchPlanet = async () => {
    const res = await fetch(`/api/planets/show/${id}`)
    const planet = await res.json()
    setPlanet(planet)
  }

  return (
    <div className="container">
      <h1>Name: {planet.name}</h1>
      <p>Rotation period: {planet.rotation_period} hours</p>
      <p>Orbital period: {planet.orbital_period} days</p>
      <p>Diameter: {planet.diameter} KM</p>
      <p>Climate: {planet.climate}</p>
      <p>Gravity: {planet.gravity}</p>
      <p>Terrain: {planet.terrain} days</p>
      <p>Surface Water: {planet.surface_water}</p>
      <p>Population: {isNaN(planet.population) ? planet.population : `${planet.population} people`}</p>
    </div>
  );
}

export default PlanetDetail
