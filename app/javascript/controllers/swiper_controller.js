import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper';
// import Swiper and modules styles

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    const swiper = new Swiper(this.element)
  }
}
