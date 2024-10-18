// Pie Chart Data
const pieChartData = {
    labels: ['Workshop', 'Seminar', 'Conference'],
    datasets: [{
        data: [300, 200, 100],
        backgroundColor: [
            'rgba(255, 99, 132, 0.8)',
            'rgba(54, 162, 235, 0.8)',
            'rgba(255, 206, 86, 0.8)',
        ],
    }]
};

// Bar Chart Data
const barChartData = {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    datasets: [
        {
            label: 'Applicants',
            data: [65, 59, 80, 81, 56, 55],
            backgroundColor: 'rgba(255, 99, 132, 0.8)',
        },
        {
            label: 'Attendees',
            data: [28, 48, 40, 19, 86, 27],
            backgroundColor: 'rgba(54, 162, 235, 0.8)',
        }
    ]
};

// Create Pie Chart
const pieCtx = document.getElementById('pie-chart').getContext('2d');
new Chart(pieCtx, {
    type: 'pie',
    data: pieChartData,
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Applicant\'s Favorite Events'
            }
        }
    },
});

// Create Bar Chart
const barCtx = document.getElementById('bar-chart').getContext('2d');
new Chart(barCtx, {
    type: 'bar',
    data: barChartData,
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Monthly Applicants vs Attendees'
            }
        }
    },
});