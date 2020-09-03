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
      animation: 150
    })
  };

  if (one) {
    Sortable.create(day_1, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };

  if (two) {
    Sortable.create(day_2, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };

  if (three) {
    Sortable.create(day_3, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };
}

export { initSortable };
