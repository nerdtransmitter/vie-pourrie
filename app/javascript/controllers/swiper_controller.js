import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper';
import 'swiper/css';
import 'swiper/css/navigation';
// import Swiper and modules styles

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    console.log(this.element)
    const swiper = new Swiper(this.element)
  }
}
