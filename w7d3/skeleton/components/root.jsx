import React from 'react';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';


const Root = () => {
  return (
    <Provider store={store}>
      <GiphysSearchContainer giphys={store.giphys} fetchSearchGiphys={store.fetchSearchGiphys}/>
    </Provider>
  )
};

export default Root;
