import React from 'react';
import { Router, Route } from 'react-router';
import NavBar from './NavBar'
const App = props => {
  return(
  <div>
    <Route path= '/home' component={NavBar}/>
  </div>

    );
};

export default App;
