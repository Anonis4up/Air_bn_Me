import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickrRangePlugin";

export default class extends Controller {
  static targets = ['startDateInput', 'endDateInput']

  connect() {
    console.log("Coucou");

    flatpickr(this.startDateInputTarget, {
      plugins: [new rangePlugin({ input: this.endDateInputTarget })],
      inline: true,
      minDate: "today"
    })
  }
}
