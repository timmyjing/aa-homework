import React from 'react';

import GiphysIndexItem from './giphys_index_item';


const GiphyIndex = ({giphys}) => {
  return (
    <ul>
    {giphys.map( (giphy, i) => <li className="giphy-li"><GiphysIndexItem key={i} giphy={giphy} /></li>)}
    </ul>);
};

export default GiphyIndex;
