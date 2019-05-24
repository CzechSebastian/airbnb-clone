import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initAutocomplete } from '../plugins/init_autocomplete';

initAutocomplete();

import { loadDynamicBannerText } from '../plugins/init_typedjs';

loadDynamicBannerText();


export { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert();


