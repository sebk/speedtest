import React, { Component } from 'react';
import './App.css';
import Chart from './Chart';

const App = () => {
  const options = {
    title: {
      text: 'Speedtest',
    },
    xAxis: {
      categories: [
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'June',
        'July',
        'Aug',
        'Sept',
        'Oct',
        'Nov',
        'Dec',
      ],
    },
    yAxis: {
      title: {
        text: 'Speed (Mbit/s)',
      },
    },
    legend: {
      enabled: true,
    },
    chart: {
      type: 'column',
    },
    series: [
      {
        name: 'Ping',
        data: [1, 0, 4, 0, 3],
      },
      {
        name: 'Download',
        data: [5, 7, 3, 2, 4],
      },
      {
        name: 'Upload',
        data: [0, 0, 0, 1, 0],
      },
    ],
  };

  return (
    <div className="App">
      <Chart options={options} />
    </div>
  );
};

export default App;
