import { Sortable, MultiDrag } from 'sortablejs';

const zone = document.getElementById('stock_zone');
const one = document.getElementById('day_one');
const two = document.getElementById('day_two');
const three = document.getElementById('day_three');

const initSortable = () => {
  Sortable.mount(new MultiDrag());
  if (zone) {
    Sortable.create(stock_zone, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };

  if (one) {
    Sortable.create(day_one, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };

  if (two) {
    Sortable.create(day_two, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };

  if (three) {
    Sortable.create(day_three, {
      group: 'shared',
      multiDrag: true,
      selectedClass: "selected",
      animation: 150
    })
  };
}

export { initSortable };
