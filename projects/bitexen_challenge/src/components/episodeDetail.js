import React, { useState, useEffect } from 'react';
import CharactersItem from './charactersItem';
import fetchData from '../api/fetchData';
import urls from '../api/urls';

function EpisodeDetail({ match }){
	const [ episodeDetailItems, setEpisodeDetailItems ] = useState([]);
	const { episodeID } = match.params;
	const { characters } = episodeDetailItems;

	useEffect(() => {
		
		async function getCharactersData(){
			const response = await fetchData().get(`${urls.singleEpisode + episodeID}`);
			setEpisodeDetailItems(response.data);
		}

		getCharactersData();
	}, [episodeID]);

	return (

		<div className="container">
			<h1>
				<span> { episodeDetailItems.name } </span>
				<span> - </span>
				<span> {episodeDetailItems.episode} </span>
			</h1>
			<p>Characters</p>

			<div className="d-flex flex-row flex-wrap">
				{
					characters && characters.map((characters_url, index) => {
						return (
				      <CharactersItem key={index} url={characters_url} />
						)
					})
				}
			</div>
		</div>
	)
}

export default EpisodeDetail;

