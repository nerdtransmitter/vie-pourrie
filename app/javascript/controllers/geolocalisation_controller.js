import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="geolocalisation"
export default class extends Controller {

  static targets = [ "lat", "lng" ]

  connect() {
    // console.log(this.latTarget)
    // console.log(this.lngTarget.value)
    const options = {
      enableHighAccuracy: true,
      timeout: 10000,
      maximumAge: 0,
    };

    navigator.geolocation.getCurrentPosition(this.success.bind(this), this.error, options);
  }

  success(pos) {
    const crd = pos.coords;

    this.latTarget.value = crd.latitude
    this.lngTarget.value = crd.longitude

  }

  error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }

}
