import React from "react"
import {Route, Switch} from 'react-router-dom'

import About from './About'
import Character from './Character'
import Film from './Film'
import Food from './Food'
import Species from './Species'
import Planet from './Planet'

class App extends React.Component {

  render () {
    return (
      <div>
        <div>
          <Switch>
            <Route exact path="/About" component={About} />
            <Route exact path="/Character" component={Character}/>
            <Route exact path="/Planet" component={Planet}/>
            <Route exact path="/Species" component={Species}/>
            <Route exact path="/Film" component={Film}/>
            <Route exact path="/Food" component={Food}/>
          </Switch>
        </div>
      </div>
    );
  }
}

export default App