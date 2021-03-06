// app/javascript/controllers/mapbox_controller.js
import { Controller } from "@hotwired/stimulus";
import mapboxgl, { Marker } from "mapbox-gl";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/sedrakable/cl01c6czh000m14qxkdom9bm4/draft",
    });

    this.#addMarkersToMap();
    this.#fitMapToMarkers();

    this.map.addControl(
      new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl,
      })
    );
  }

  select(event) {
    console.log(event.pet);
  }
  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div");
      customMarker.setAttribute("data-action", "click->mapbox#select");
      customMarker.className = "marker";
      customMarker.style.backgroundImage = `url('${marker.image_url}')`;
      customMarker.style.backgroundSize = "contain";
      customMarker.style.width = "32px";
      customMarker.style.height = "32px";

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) =>
      bounds.extend([marker.lng, marker.lat])
    );
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  // #addMarkersToMap() {
  // this.markersValue.forEach((marker) => {
  //   const popup = new mapboxgl.Popup().setHTML(marker.info_window) // add this
  //   new mapboxgl.Marker()
  //     .setLngLat([ marker.lng, marker.lat ])
  //     .setPopup(popup) // add this
  //     .addTo(this.map)
  // });
  // }
}
