// bill-status.js

function getStatusClass(status) {
    switch (status) {
        case 'PENDING':
            return 'status-pending';
        case 'APPROVED':
            return 'status-approved';
        case 'REJECTED':
            return 'status-rejected';
        default:
            return '';
    }
}

document.addEventListener('DOMContentLoaded', function () {
    const statusCells = document.querySelectorAll('.main-container table tbody td:last-child');
    statusCells.forEach(cell => {
        const status = cell.textContent.trim();
        const statusClass = getStatusClass(status);
        cell.classList.add(statusClass);
    });
});
