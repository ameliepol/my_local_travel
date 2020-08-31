const flatpickr = require("flatpickr");

//import flatpickr from "flatpickr";
const element = document.getElementById("date_start")

const initFlatpickr = () => {
  if (element) {
    flatpickr(element, {
      altInput: true,
      mode: "single",
      minDate: "today",
      dateFormat: "d-m-Y"
    });
  }
}

export { initFlatpickr };
