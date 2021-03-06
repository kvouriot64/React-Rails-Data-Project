import React, { useEffect } from "react"
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom'
import {HistoryProvider} from '../context/HistoryContext'
import useHistory from '../hooks/useHistory'
import Nav from './Nav'

import CharacterDetail from './CharacterDetail'
import PlanetDetail from './PlanetDetail'
import SpeciesDetail from './SpeciesDetail'
import FoodDetail from './FoodDetail'
import FilmDetail from './FilmDetail'

import Home from './Home'
import About from './About'
import Characters from './Characters'
import Films from './Films'
import Foods from './Foods'
import Species from './Species'
import Planets from './Planets'
import Search from './Search'

export default () => {
  const categories = ['Characters', 'Planets', 'Foods', 'Films', 'Species', 'About']

  const historyContext = useHistory()
  const { history, updateHistory, pushToHistory } = historyContext

  useEffect(() => {
    updateHistory([])
    console.log(history)
  }, [])

  return (
    <>
      <HistoryProvider value={historyContext}>
        <div>
          <Router>
            <Nav placeholder="Search" categories={categories}/>
              <Switch>
                <Route exact path="/" component={Home} />
                <Route exact path="/About" component={About} />
                <Route exact path="/Characters" component={Characters} />
                <Route exact path="/Characters/:id" component={CharacterDetail} />
                <Route exact path="/Planets" component={Planets} />
                <Route exact path="/Planets/:id" component={PlanetDetail} />
                <Route exact path="/Species" component={Species} />
                <Route exact path="/Species/:id" component={SpeciesDetail} />
                <Route exact path="/Films" component={Films} />
                <Route exact path="/Films/:id" component={FilmDetail} />
                <Route exact path="/Foods" component={Foods} />
                <Route exact path="/Foods/:id" component={FoodDetail} />
                <Route exact path ="/Search/:query" component={Search} />
              </Switch>
            </Router>
        </div>
      </HistoryProvider>
    </>
  );
}