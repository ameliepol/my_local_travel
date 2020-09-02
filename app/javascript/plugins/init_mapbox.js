import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};



const infoPopup = document.getElementById("info-popup");
const infoBox = document.querySelector("#info-popup > .infos");
const infoBtn = document.querySelector("#info-popup > .btn-quit");

if (infoBtn) {
  infoBtn.addEventListener("click", (e) => {
    infoPopup.classList.add("d-none");
  })
}


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '30px';
    element.style.height = '30px';

    element.addEventListener("click", (e) => {
      infoBox.innerHTML = marker.infoWindow;
      infoPopup.classList.remove("d-none");
    })

    new mapboxgl.Marker(element)
      .setLngLat([marker.lng, marker.lat])
      .addTo(map);
    });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

function getMatch(map) {

  // var coords =  [[-122.63353228540086, 45.535683971743964],
  // [-122.65533328027303, 45.531836071414034],
  // [-122.6876056191411, 45.52510161231288]]
  var coords = mapElement.dataset.coords

  var e = coords

  var url = 'https://api.mapbox.com/directions/v5/mapbox/cycling/' + e +'?geometries=geojson&steps=true&&access_token=' + mapboxgl.accessToken;
  console.log(url)
  var req = new XMLHttpRequest();
  req.responseType = 'json';
  req.open('GET', url, true);
  req.onload  = function() {
    var jsonResponse = req.response;
    // var distance = jsonResponse.routes[0].distance*0.001; // convert to km
    // var duration = jsonResponse.routes[0].duration/60; // convert to minutes
    // add results to info box
    // document.getElementById('calculated-line').innerHTML = 'Distance: ' + distance.toFixed(2) + ' km<br>Duration: ' + duration.toFixed(2) + ' minutes';
    var coords = jsonResponse.routes[0].geometry;
    // add the route to the map
    addRoute(map, coords);
  };
  req.send();
};

function addRoute (map, coords) {
// check if the route is already loaded
  if (map.getSource('route')) {
    map.removeLayer('route')
    map.removeSource('route')
  } else{
    map.addLayer({
      "id": "route",
      "type": "line",
      "source": {
        "type": "geojson",
        "data": {
          "type": "Feature",
          "properties": {},
          "geometry": coords
        }
      },
      "layout": {
        "line-join": "round",
        "line-cap": "round"
      },
      "paint": {
        "line-color": "#3b9ddd",
        "line-width": 8,
        "line-opacity": 0.8
      }
    });
  };
};

var showTrip = document.querySelector('.show-trip');
console.log('hello');


const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    window.setTimeout(()=>map.resize(), 500);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));

    if (showTrip) {
      map.on('load', () =>{
        getMatch(map);
      });
    }
  }
};

export { initMapbox };
