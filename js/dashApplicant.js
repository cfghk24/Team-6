// Sample data
const applicantsData = [
    { id: 1, name: 'Emily Chen', age: 9, guardian: 'parent@example.com', appliedFor: 'Painting Workshop' },
    { id: 2, name: 'Liam Smith', age: 11, guardian: 'guardian@example.com', appliedFor: 'Drama Club' },
    { id: 3, name: 'Sophia Wong', age: 7, guardian: 'family@example.com', appliedFor: 'Music Class' },
    { id: 4, name: 'Ethan Brown', age: 13, guardian: 'caretaker@example.com', appliedFor: 'Dance Performance' },
    { id: 5, name: 'Olivia Taylor', age: 10, guardian: 'parent2@example.com', appliedFor: 'Creative Writing' },
];

// DOM elements
const applicantsTable = document.getElementById('applicantsTable');
const applicantForm = document.getElementById('applicantForm');
const deleteBtn = document.getElementById('deleteBtn');
const searchInput = document.getElementById('searchInput');
const searchBtn = document.getElementById('searchBtn');



// Edit applicant
function editApplicant(id) {
    const applicant = applicantsData.find(a => a.id === id);
    if (applicant) {
        document.getElementById('name').value = applicant.name;
        document.getElementById('age').value = applicant.age;
        document.getElementById('guardian').value = applicant.guardian;
        document.getElementById('appliedFor').value = applicant.appliedFor;
        applicantForm.dataset.id = id;
    }
}

// Search applicants
function searchApplicants(query) {
    return applicantsData.filter(applicant =>
        applicant.name.toLowerCase().includes(query.toLowerCase()) ||
        applicant.guardian.toLowerCase().includes(query.toLowerCase()) ||
        applicant.appliedFor.toLowerCase().includes(query.toLowerCase())
    );
}

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

// Initialize
document.addEventListener('DOMContentLoaded', () => {
    initAgeChart();
});