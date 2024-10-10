
const ctx = document.getElementById('myChart');
  
new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['12:00', '13:00', '14:00', '15:00', '16:00', '17:00'],
    datasets: [{
        label: 'Umidade',
        data: [80, 82, 80, 85, 80, 83],
        backgroundColor: 'rgb(30,144,255)',
        borderColor: 'rgb(30,144,255)',
        borderWidth: 3
    },
    {
        label: 'Temperatura',
        data: [30, 29, 28, 25, 22, 23],
        backgroundColor: '#E1225B',
        borderColor:'#E1225B',
        borderWidth: 3
    }

]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true,
        min: 20
      }
    }
  }
});
const ctx2 = document.getElementById('myChart2');

new Chart(ctx2, {
  type: 'bar',
  data: {
    labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho'],
    datasets: [{
        
            label: 'Temperatura Média',
            data: [22, 24, 27, 23, 20, 18],
            backgroundColor: '#E1225B',
            borderColor:'#E1225B',
            borderWidth: 3
        },
        {label: 'Umidade Média',
        data: [90, 89, 93, 87, 88, 82],
        backgroundColor: 'rgb(30,144,255)',
        borderColor: 'rgb(30,144,255)',
        borderWidth: 3
    }

]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true,
        min: 0
      }
    }
  }
});