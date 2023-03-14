
import { Controller } from "@hotwired/stimulus"
// Connects to data-controller=“cards”
export default class extends Controller {
  static targets = ["card"]
  connect() {

setTimeout(() => {
      this.cardTargets.forEach(element => {
        element.classList.add("centering")
      });
    }, 3000);
  }
}
