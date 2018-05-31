import React from 'react';
import ReactDOM from 'react-dom';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm);
    debugger
    this.setState({searchTerm: ""});
  }

  handleChange(e) {
    e.preventDefault();
    this.setState({searchTerm: e.target.value})
  }

  render() {
    return (
      <div>
      <GiphysIndex giphys={this.props.giphys}/>
      <form onSubmit={this.handleSubmit}>
        <input type="text" onChange={this.handleChange} value={this.state.searchTerm} />
        <input type="submit" value="Search"/>
      </form>
    </div>
    );
  }

}


export default GiphysSearch;
