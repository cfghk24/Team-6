// Initialize age distribution chart
function initAgeChart() {
    const ctx = document.getElementById('ageChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['5-7', '8-10', '11-13', '14-16', '17+'],
            datasets: [{
                label: 'Number of Applicants',
                data: [180, 320, 250, 150, 100],
                backgroundColor: 'rgba(54, 162, 235, 0.5)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
}

function getRandomColor() {
    const letters = '0123456789ABCDEF';
    let color = '#';
    for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

function darkenColor(color, percent) {
    const rgba = color.match(/\d+/g);
    const R = Math.max(0, rgba[0] - Math.round(rgba[0] * (percent / 100)));
    const G = Math.max(0, rgba[1] - Math.round(rgba[1] * (percent / 100)));
    const B = Math.max(0, rgba[2] - Math.round(rgba[2] * (percent / 100)));
    const A = rgba[3];
    return `rgba(${R}, ${G}, ${B}, ${A})`;
}

function initTypeChart() {
    const ctx = document.getElementById('typeChart').getContext('2d');
    const backgroundColors = [
        'rgba(183, 224, 255, 0.5)',
        'rgba(255, 245, 205, 0.5)',
        'rgba(255, 207, 179, 0.5)',
        'rgba(231, 143, 129, 0.5)', 
        'rgba(231, 204, 204, 0.5)'
    ];
    const borderColors = [];
    for (let i = 0; i < backgroundColors.length; i++) {
        borderColors.push(darkenColor(backgroundColors[i], 20)); // Darken by 20%
    }

    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['Interactive Art Workshops', 'Family Art Days', 'School lesson', 'Art and Technology Integration', 'Museum'],
            datasets: [{
                label: 'Number of Applicants',
                data: [170, 280, 524, 230, 100],
                backgroundColor: backgroundColors,
                borderColor: borderColors,
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Number of Applicants by Activity Type'
                }
            }
        }
    });
}

// Initialize
document.addEventListener('DOMContentLoaded', () => {
    initAgeChart();
    initTypeChart();
});