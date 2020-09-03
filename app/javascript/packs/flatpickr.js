import Flatpickr from "flatpickr";
import { French } from "flatpickr/dist/l10n/fr.js"

const flatpickr = require("flatpickr");
const element = document.getElementById("date_start")
const initFlatpickr = () => {
  if (element) {
    flatpickr(element, {
      // altInput: true,
      dateFormat: "l d F Y",
      mode: "single",
      minDate: "today",
      locale: 'fr'
    });
  }
}


// Set locale based on html lang attribute


initFlatpickr();
