import React, { Component } from 'react';
import Highcharts from 'highcharts';
import PropTypes from 'prop-types';

class Chart extends Component {
  componentDidMount() {
    this.chart = new Highcharts[this.props.type || 'Chart'](this.chartEl, this.props.options);
  }

  componentWillUnmount() {
    this.chart.destroy();
  }

  render() {
    return <div ref={el => (this.chartEl = el)} />;
  }
}

Chart.propTypes = {
  type: PropTypes.string,
  options: PropTypes.object,
};

export default Chart;
