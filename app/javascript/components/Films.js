import React, {useEffect, useState} from "react"
import Film from './Film'

function Films() {
  useEffect(() => {
    fetchFilms();
  }, [])

  const [films, setFilms] = useState([])

  const fetchFilms = async () => {
    const res = await fetch('api/films/index')
    const films = await res.json()
    setFilms(films)
  }

  const data = films.map(film => <Film film={film}/>)

  return (
    <div>
      <table className="table table-hover">
      <thead>
        <tr>
          <th scope="col">Title</th>
          <th scope="col">Episode</th>
          <th scope="col">Director</th>
          <th scope="col">Producer</th>
        </tr>
      </thead>
      <tbody>
        {data}
      </tbody>
      </table>
    </div>
  );
}

export default Films
