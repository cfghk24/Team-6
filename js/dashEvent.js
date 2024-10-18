// Sample data
const events = [
    { id: 1, title: "Painting Workshop", description: "Learn various painting techniques", fee: 150, mentor: "Alice Johnson", enrollTime: "2023-06-15", participants: 20, attendance: 18 },
    { id: 2, title: "Drama Club", description: "Explore acting and stage performance", fee: 200, mentor: "Bob Smith", enrollTime: "2023-06-20", participants: 15, attendance: 14 },
    { id: 3, title: "Music Class", description: "Introduction to musical instruments", fee: 180, mentor: "Carol White", enrollTime: "2023-06-25", participants: 18, attendance: 16 },
];

// DOM elements
const searchForm = document.getElementById('searchForm');
const eventTable = document.getElementById('eventTable');
const resetBtn = document.getElementById('resetBtn');
const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');

// Populate event table
function populateEventTable(events) {
    const tbody = eventTable.querySelector('tbody');
    tbody.innerHTML = '';
    events.forEach(event => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${event.id}</td>
            <td>${event.title}</td>
            <td>${event.description}</td>
            <td>$${event.fee}</td>
            <td>${event.mentor}</td>
            <td>${event.enrollTime}</td>
            <td>${event.participants}</td>
            <td>${event.attendance}</td>
            <td><button class="btn btn-link">View</button></td>
        `;
        tbody.appendChild(row);
    });
}

// Search events
function searchEvents(e) {
    e.preventDefault();
    const eventId = document.getElementById('eventId').value;
    const title = document.getElementById('title').value;
    const startDate = document.getElementById('startDate').value;
    const endDate = document.getElementById('endDate').value;
    const status = document.getElementById('status').value;

    // Filter events based on search criteria
    const filteredEvents = events.filter(event => 
        (eventId === '' || event.id.toString().includes(eventId)) &&
        (title === '' || event.title.toLowerCase().includes(title.toLowerCase())) &&
        (startDate === '' || event.enrollTime >= startDate) &&
        (endDate === '' || event.enrollTime <= endDate) &&
        (status === '' || event.status === status)
    );

    populateEventTable(filteredEvents);
}

// Reset search form
function resetForm() {
    searchForm.reset();
    populateEventTable(events);
}

// Event listeners
searchForm.addEventListener('submit', searchEvents);
resetBtn.addEventListener('click', resetForm);

// Initialize
document.addEventListener('DOMContentLoaded', () => {
    populateEventTable(events);
});

// Pagination (for demonstration, not functional with the current data)
prevBtn.addEventListener('click', () => {
    console.log('Previous page');
});

nextBtn.addEventListener('click', () => {
    console.log('Next page');
});