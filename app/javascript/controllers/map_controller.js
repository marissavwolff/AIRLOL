import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkerToMap()
    this.#fitMapToMarkers()
  }
  #addMarkerToMap() {
    // this.markersValue

    const customMarker = document.createElement("div")
    customMarker.innerHTML = this.markerValue.marker_html

    new mapboxgl.Marker(customMarker)
      .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
      .addTo(this.map)
  }

  #fitMapToMarkers() {
   this.map.jumpTo({
    center: [this.markerValue.lng, this.markerValue.lat],
   zoom: 12
  })
  }
}
