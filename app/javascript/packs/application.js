require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import '../plugins/init_sweetalert';

import AOS from 'aos';
import 'aos/dist/aos.css';

AOS.init();

