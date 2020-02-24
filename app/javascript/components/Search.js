import React, {useState, useEffect} from "react"
import {useParams} from 'react-router-dom'
import SearchResult from './SearchResult'

function Search() {
  useEffect(() => {
    fetchSearchData()
  }, [])

  const { query } = useParams()

  const [results, setSearchResults] = useState([])

  // Grab the value in the query property in the URL parameters => match.params.query


  const fetchSearchData = async () => {
    const res = await fetch(`/api/search/search/${query}`)
    const searchResults = await res.json()
    setSearchResults(searchResults)
  }

  const validResults = results.filter(collection => collection.length > 0)

  let searchResults

  if(validResults.length)
  {
    searchResults = validResults.map(collection =>
    collection.map(model => {
          if(model.hasOwnProperty('birth_year'))
          {
            return <SearchResult modelName="Characters" id={model.id} header={model.name} data={`Hair color: ${model.hair_color}`}/>
          }
          else if(model.hasOwnProperty('dish'))
          {
            return <SearchResult modelName="Foods" id={model.id} header={model.dish} data="Placeholder for description" />
          }
          else if(model.hasOwnProperty('orbital_period'))
          {
            return <SearchResult modelName="Planets" id={model.id} header={model.name} data={`Climate: ${model.climate}`} />
          }
          else if(model.hasOwnProperty('title'))
          {
            return <SearchResult modelName="Films" id={model.id} header={model.title} data={`Opening crawl: ${model.opening_crawl.substring(0, 20)}...`} />
          }
          else
          {
            return <SearchResult modelName="Species" id={model.id} header={model.name} data={`Language: ${model.language}`} />
          }
         }
       )
     )
  }
  else
  {
    searchResults = <p>Please check your search for typos.</p>
  }

  return (
    <div className="container">
      {!validResults.length ? <h1>No results for "{query}"</h1> : <h1>Search results for "{query}"</h1>}
      <div>
        {searchResults}
      </div>
    </div>
  )
}

export default Search
