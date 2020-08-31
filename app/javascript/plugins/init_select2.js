import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

const initSelect2 = () => {
  $('.select2').select2(); // (~ document.querySelectorAll)
};

export { initSelect2 };
