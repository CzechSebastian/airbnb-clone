import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 40, maxZoom: 10 });
}

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
  const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

  new mapboxgl.Marker()
    .setLngLat([ marker.lng, marker.lat ])
    .setPopup(popup) // add this
    .addTo(map);
});


};


const initMapbox = () => {
  const mapBtn = document.getElementById("map-btn");

  mapBtn.addEventListener("click", (event) => {
    const mapElement = document.getElementById('map');
    map.classList.toggle("map-size")

    if (mapBtn.innerHTML === "Hide Map") {
      mapBtn.innerHTML = "Show Map";
    } else {
      mapBtn.innerHTML = "Hide Map";
    }

    if (mapElement) { // only build a map if there's a div#map to inject into
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });

      const markers = JSON.parse(mapElement.dataset.markers);

      addMarkersToMap(map, markers);

      fitMapToMarkers(map, markers);
      map.resize();
    }
  });
};



export { initMapbox };
