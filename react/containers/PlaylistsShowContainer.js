import React from 'react'
import PlaylistTile from '../components/PlaylistTile'

class PlaylistsShowContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      playlists: []
    }
    this.getPlaylists = this.getPlaylists.bind(this)
  }

  getPlaylists() {
    fetch('/api/v1/playlists')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      debugger
      this.setState({
       playlists: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


componentDidMount(){
  this.getPlaylists()
}


render() {
  let playlists = this.state.playlists.map(playlist => {
    return(
      <div>
        <PlaylistTile
          name={this.state.playlist.name} />
        </div>
      );
    })
    return(
      <div>
        <p>my text</p> {playlists}
        </div>
    )
  }
}

export default PlaylistsShowContainer;
