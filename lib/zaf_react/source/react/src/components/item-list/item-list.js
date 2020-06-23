import React, { Component } from 'react';
import CLIENT from '../../zendesk/zaf_client';


class List extends Component {


  constructor(){
    super()
    this.state = {
      item_list: []
    }
  }


  componentDidMount(){
    CLIENT.metadata().then(metadata => {
      this.setState({ item_list: JSON.parse(metadata['settings']['item_list'])} );
    });
  }


  render(){
    return (
      <ul>
        {
          this.state.item_list.map((item, key) => {
            return <li key={key}>{item}</li>
          })
        }
      </ul>
    )
  }


}


export default List;
