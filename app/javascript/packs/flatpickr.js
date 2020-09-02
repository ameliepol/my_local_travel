const flatpickr = require("flatpickr");
const element = document.getElementById("date_start");
const initFlatpickr = () => {
  if (element) {
    flatpickr(element, {
      altInput: true,
      mode: "single",
      minDate: "today",
      dateFormat: "d-m-Y"
    });
  }
};
initFlatpickr();
