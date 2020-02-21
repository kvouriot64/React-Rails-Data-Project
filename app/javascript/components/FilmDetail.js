import React, {useState, useEffect} from "react"
import {useParams} from 'react-router-dom'

function FilmDetail() {
  useEffect(() => {
    fetchMovie()
  }, [])

  const {id} = useParams()

  const [film, setFilm] = useState({})

  const fetchMovie = async () => {
    const res = await fetch(`/api/films/show/${id}`)
    const film = await res.json()
    setFilm(film)
  }

  function renderSwitch(episode) {
  switch(episode) {
    case 1:
      return 'I'
    case 2:
      return 'II'
    case 3:
      return 'III'
    case 4:
      return 'IV';
    case 5:
      return'V'
    case 6:
      return 'VI'
    case 7:
      return 'VII'
    }
  }


  return (
    <div className="container">
      <h1>Title: {film.title}</h1>
      <p>Episode:{renderSwitch(film.episode_id)}</p>
      <block>Opening crawl: {film.opening_crawl}</block>
      <p>Director: {film.director}</p>
      <p>Producer: {film.producer}</p>
      <p>Release date: {film.release_date}</p>
    </div>
  );
}

export default FilmDetail
