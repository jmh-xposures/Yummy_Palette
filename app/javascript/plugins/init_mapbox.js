import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    let markers = JSON.parse(mapElement.dataset.markers);
   
    markers.forEach((m)=>{
      const popup = new mapboxgl.Popup().setHTML(m.mapPopup);
      const marker = new mapboxgl.Marker().setLngLat([m.lng, m.lat]).setPopup(popup).addTo(map);
    }); 

    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
      map.fitBounds(bounds, { 
        padding: 70, 
        maxZoom: 15, 
        duration: 0 });
    };
    fitMapToMarkers(map, markers);
  }
};


export { initMapbox };