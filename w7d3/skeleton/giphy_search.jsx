import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {receiveSearchGiphys, fetchSearchGiphys} from './actions/giphy_actions';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  window.receiveSearchGiphys = receiveSearchGiphys;
  window.fetchSearchGiphys = fetchSearchGiphys;
  window.store = store;
  ReactDOM.render(<Root store={store} />, document.getElementById('root'));
  console.log('ready');
});
