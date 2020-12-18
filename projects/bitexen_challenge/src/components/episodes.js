import React, { useState, useEffect } from 'react';
import EpisodeItem from './episodeItem';
import fetchData from '../api/fetchData';
import urls from '../api/urls';

function Episodes(){
	const [ episodes, setEpisodes ] = useState([]);


	useEffect(() => {

		async function getEpisodesData(){
			const response = await fetchData().get(urls.episode);
			setEpisodes(response.data.results);
		}

		getEpisodesData();
	}, []);

	return (
		<div className="container">
			<h1>Episodes</h1>
			{ 
				episodes.map((episode_item) => {
					return (
			      <EpisodeItem key={episode_item.id} episode={episode_item} />
					)
				})
			}
		</div>
	)
}

export default Episodes;