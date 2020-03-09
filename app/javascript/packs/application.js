require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import "sweetalert";
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Votre demande a été effectuée",
  text: "Le groupe va revenir vers vous très rapidement",
  icon: "success"
});

import AOS from 'aos';
import 'aos/dist/aos.css';

AOS.init();
