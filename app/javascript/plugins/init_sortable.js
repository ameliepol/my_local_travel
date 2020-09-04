import { Sortable, MultiDrag } from 'sortablejs';

const zone = document.getElementById('day_0');
const one = document.getElementById('day_1');
const two = document.getElementById('day_2');
const three = document.getElementById('day_3');

const initSortable = () => {
  Sortable.mount(new MultiDrag());
  if (zone) {
    Sortable.create(day_0, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150,
      onEnd: function (/**Event*/evt) {
        var itemEl = evt.item;
        var btnUpdate = itemEl.querySelector(".btn-update-selected-activity");
        if (btnUpdate) {
          btnUpdate.classList.remove("d-none");
          // btnUpdate.classList.add("btn-valid-activity");
          var itemOptions = itemEl.querySelectorAll("option");
          itemOptions.forEach((itemOption) => {
            itemOption.selected = false;
            if (itemOption.value === evt.to.dataset.dayId ){
              itemOption.selected = true;
            }
          });
        }
      }
    })
  };

  if (one) {
    Sortable.create(day_1, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150,
      onEnd: function (/**Event*/evt) {
        var itemEl = evt.item;
        var btnUpdate = itemEl.querySelector(".btn-update-selected-activity");
        if (btnUpdate) {
          btnUpdate.classList.remove("d-none");
          var itemOptions = itemEl.querySelectorAll("option");
          itemOptions.forEach((itemOption) => {
            itemOption.selected = false;
            if (itemOption.value === evt.to.dataset.dayId ){
              itemOption.selected = true;
            }
          });
        }
      }
    })
  };

  if (two) {
    Sortable.create(day_2, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150,
      onEnd: function (/**Event*/evt) {
        var itemEl = evt.item;
        var btnUpdate = itemEl.querySelector(".btn-update-selected-activity");
        if (btnUpdate) {
          btnUpdate.classList.remove("d-none");
          var itemOptions = itemEl.querySelectorAll("option");
          itemOptions.forEach((itemOption) => {
            itemOption.selected = false;
            if (itemOption.value === evt.to.dataset.dayId ){
              itemOption.selected = true;
            }
          });
        }
      }
    })
  };

  if (three) {
    Sortable.create(day_3, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150,
      onEnd: function (/**Event*/evt) {
        var itemEl = evt.item;
          btnUpdate.classList.remove("d-none");
        if (btnUpdate) {
          btnUpdate.classList.add("btn-valid-activity");
          var itemOptions = itemEl.querySelectorAll("option");
          itemOptions.forEach((itemOption) => {
            itemOption.selected = false;
            if (itemOption.value === evt.to.dataset.dayId ){
              itemOption.selected = true;
            }
          });
        }
      }
    })
  };
}

export { initSortable };
