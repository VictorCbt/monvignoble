require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")




import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { initSearch } from '../components/search';
import '../plugins/init_sweetalert';
import AOS from 'aos';
import 'aos/dist/aos.css';

loadDynamicBannerText();
AOS.init();
initSearch();
