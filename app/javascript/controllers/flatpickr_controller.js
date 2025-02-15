import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "start_date", "end_date" ]
  connect() {
    flatpickr(this.startDateTarget, {
              enableTime: true,
              dateFormat: "Y-m-d H:i",
              // Provide an id for the plugin to work
              plugins: [new rangePlugin({ input: "#end_time"})]})
    flatpickr(this.endDateTarget, {})
  }
}
