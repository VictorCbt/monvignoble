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

loadDynamicBannerText();
AOS.init();
initSearch();
addInvestmentInFavori();
