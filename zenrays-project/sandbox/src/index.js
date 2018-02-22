import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import RaisedButton from 'material-ui/RaisedButton';

const App = () => (
  <MuiThemeProvider>
    <RaisedButton label="Click" onClick={() => alert("Hi")}/>
  </MuiThemeProvider>
);

class Main extends React.Component{
  render(){
    return(
      <div className = "text">
        Hello World!
        <App />
      </div>
    );
  }
}

ReactDOM.render(
  <Main />,
  document.getElementById('root')
);