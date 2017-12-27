import React from 'react';
import { Router, Route, browserHistory } from 'react-router';
import NavBar from './NavBar'
import PlaylistsShowContainer from '../containers/PlaylistsShowContainer'
const App = props => {
  return(
  <div>
    <Router history={browserHistory}>
      <Route path= '/' component={NavBar}/>
      <Route path= '/playlists' component={PlaylistsShowContainer}/>
    </Router>
  </div>

    );
};

export default App;
