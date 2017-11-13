import React from 'react';
import { shallow } from 'enzyme';
import { expect } from 'chai';
import ReactDOM from 'react-dom';
import App from './App';
import Chart from './Chart';

describe('App Component', () => {
  it('renders without crashing', () => {
    const div = document.createElement('div');
    ReactDOM.render(<App />, div);
  });

  it('should render Chart component', () => {
    const app = shallow(<App />);
    const chart = app.find(Chart.name);
    expect(chart).to.have.length(1);
  });
});
