import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = { num1: "", num2: "", result:0};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);


  }

  //your code here
  setNum1(e) {
    e.preventDefault();
    this.setState({num1: e.target.value});
    return;
  };

  setNum2(e) {
    e.preventDefault();
    this.setState({num2: e.target.value});
  };

  add(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) + parseInt(this.state.num2)});
  }

  subtract(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) - parseInt(this.state.num2)});
  }

  multiply(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) * parseInt(this.state.num2)});
  }

  divide(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) / parseInt(this.state.num2)});
  }

  clear(e) {
    e.preventDefault();
    this.setState({num1: "", num2: "", result: 0});
  }

  render(){
    const state = this.state
    return (
      <div>
        <h1>{state.result}</h1>
        <input name="num1" type="text" value={state.num1} onChange={this.setNum1}></input>
        <input name="num2" type="text" value={state.num2} onChange={this.setNum2}></input>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.clear}>CLEAR</button>
      </div>
    );
  }
}

export default Calculator;
