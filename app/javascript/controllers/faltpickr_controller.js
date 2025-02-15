import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
// The range plugin is also needed in order to use two inputs
import rangePlugin from "flatpickrRangePlugin";

// Connects to data-controller="faltpickr"
export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput' ]

  connect() {
    console.log("Coucou");

    flatpickr(this.startDateInputTarget, {
      "plugins": [new rangePlugin({ input: this.endDateInputTarget})],
      inline: true
      })
  }
}
