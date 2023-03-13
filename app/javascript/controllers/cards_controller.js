
import { Controller } from "@hotwired/stimulus"
// Connects to data-controller=“cards”
export default class extends Controller {
  static targets = ["card"]
  connect() {
    setTimeout(() => {
      this.cardTargets.forEach(element => {
        element.style.inset = 'unset'
        element.style.margin = '0 auto'
      });
    }, 1000);
  }
}
