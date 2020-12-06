import 'select2'
import 'select2/dist/css/select2.min.css'

const initSelect2 = () => {
  $('.select2').select2({width: '100%'});
}

const testSelect2 = () => {
$(document).ready(function() {
    $('.testSelect2').select2();
});

export default initSelect2
