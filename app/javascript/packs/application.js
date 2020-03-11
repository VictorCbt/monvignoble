require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { initSearch } from '../components/search';
import '../plugins/init_sweetalert';
import AOS from 'aos';
import 'aos/dist/aos.css';

import initSelect2 from '../plugins/init_select2.js'
import initGlasses from '../plugins/init_glasses.js'

loadDynamicBannerText();
AOS.init();
initSearch();

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Demande Envoyée",
  text: "Réponse en attente",
  icon: "success"
});

initSelect2()
initGlasses()
