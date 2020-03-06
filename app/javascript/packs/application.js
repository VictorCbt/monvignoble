require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

$( ".arrow-icon" ).click(function() {
  $(this).toggleClass("open");
});
