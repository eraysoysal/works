import React from 'react';
import { Link } from 'react-router-dom';


class EpisodeItem extends React.Component {

	constructor(props) {
    super(props);

    this.episode = this.props.episode;
  }

  render() {
  	const episode_item = this.episode;

    return (
      <Link to={`/detail/${episode_item.id}`}>
        <div className="episode-item" key={episode_item.id}>
        	<span className="episode-name">{episode_item.name}</span>
	        <span> - </span>
	        <span>{episode_item.episode}</span>
      	</div>
      </Link>
		)
  }
}

export default EpisodeItem;