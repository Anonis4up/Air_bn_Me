import { Application } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
