import { Sortable, MultiDrag } from 'sortablejs';

Sortable.mount(new MultiDrag());

Sortable.create(list, {
  group: 'shared',
  multiDrag: true,
  selectedClass: "selected",
  animation: 150
});

Sortable.create(list2, {
  group: 'shared',
  multiDrag: true,
  selectedClass: "selected",
  animation: 150
});

export { Sortable };
