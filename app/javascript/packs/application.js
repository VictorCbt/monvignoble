require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { initSearch } from '../components/search';
import '../plugins/init_sweetalert';
import AOS from 'aos';
import 'aos/dist/aos.css';

import { addInvestmentInFavori } from '../components/investment_selected';
import initSelect2 from '../plugins/init_select2.js'

loadDynamicBannerText();
AOS.init();
initSearch();
addInvestmentInFavori();

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Demande Envoyée",
  text: "Réponse en attente",
  icon: "success"
});

initSelect2()
