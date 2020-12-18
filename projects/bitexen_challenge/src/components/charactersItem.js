import React, { useState, useEffect } from 'react';
import fetchData from '../api/fetchData';
import urls from '../api/urls';

function CharactersItem({ url }){  
  const [ character, setCharacter ] = useState([]);
  
  
  useEffect(() => {
    async function getCharactersData(){
      const replacedUrl =  (url.replace(urls.baseUrl, ""));
      const response = await fetchData().get(replacedUrl);
      setCharacter(response.data);
    }

    getCharactersData();
  }, [url]);

  return (
    <div className="col-6 d-flex flex-row pl-0">
      <div className="character-item d-flex align-items-start">
        <div className="character-image-wrapper"><img className="character-image" src={character.image} alt={character.name}/></div>
        <div className="character-content-wrapper"> 
          <h2 className="character-name"> {character.name} </h2>
          <p className=""> 
            <span className={(character.status === 'Alive') ? 'character-light --alive' : 'character-light --dead'}></span>
            {character.status} - {character.species}
          </p>
          <p className="mb-0"> Last known location:</p>
          <p className=""> -------- </p>

        </div>
      </div>
    </div>
	)
}

export default CharactersItem;