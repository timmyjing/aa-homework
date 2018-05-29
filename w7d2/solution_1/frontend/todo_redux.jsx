import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  // const addLoggingToDispatch = store => next => action => {
  //   // your code here
  //   console.log(store.getState());
  //   console.log(action);
  //   console.log(next(action));
  //   console.log(store.getState());
  // }
  //
  // const applyMiddlewares = (store, ...middlewares) => {
  //   let dispatch = store.dispatch;
  //   middlewares.forEach( mw => dispatch = mw(store)(dispatch));
  //   return Object.assign({}, store, {dispatch});
  // };

  // store.dispatch = addLoggingToDispatch(store);
  // store = applyMiddlewares(store, addLoggingToDispatch);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
