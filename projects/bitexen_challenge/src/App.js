import Episodes from './components/episodes';
import EpisodesDetail from './components/episodeDetail';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

function App() {
  return (
    <Router>
      <div className="App">
        <Switch>
          <Route path="/" exact component={Episodes} />
          <Route path="/detail/:episodeID" component={EpisodesDetail} />
        </Switch>
      </div>
    </Router>
  );
}

export default App;
