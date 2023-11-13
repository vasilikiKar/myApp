// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Place this in your assets/javascripts/application.js or a separate file
document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.expand-link').forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            let value = this.getAttribute('data-value');
            let expandedSection = document.querySelector('.expanded-section[data-value="' + value + '"]');

            // Check if content has already been loaded
            if (!expandedSection.classList.contains('loaded')) {
                // Fetch and load data using AJAX
                fetch('/engine_makers/show?value=' + value)
                    .then(response => response.text())
                    .then(data => {
                        expandedSection.innerHTML = data;
                        expandedSection.classList.add('loaded');
                    });
            }

            expandedSection.classList.toggle('expanded');
        });
    });

    document.body.addEventListener('click', function(event) {
        if (event.target.classList.contains('show-details-link')) {
            event.preventDefault();
            let recordId = event.target.getAttribute('data-record-id');
            let modalBody = document.getElementById('modal-body-content');

            let modal = new bootstrap.Modal(document.getElementById('pistonsModal'));
            // Fetch and load data using AJAX
            fetch('/engine_makers/show_details?record_id=' + recordId)
                .then(response => response.text())
                .then(data => {
                    modalBody.innerHTML = data;

                    // Show the modal
                    modal.show();

                    // Add an event listener for when the modal is fully hidden
                    modal._element.addEventListener('hidden.bs.modal', function () {
                        // Remove the modal-backdrop class when the modal is hidden
                        let modalBackdrop = document.querySelector('.modal-backdrop');
                        if (modalBackdrop) {
                            modalBackdrop.remove();
                        }
                    });
                });
        }
    });

});

