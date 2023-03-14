
import { Controller } from "@hotwired/stimulus"
// Connects to data-controller=“cards”
export default class extends Controller {
  static targets = ["card"]
  connect() {

    
    setTimeout(() => {
      console.log("testtest")

      this.cardTargets.forEach(element => {
        element.classList.add("centering")
      });
    }, 3000);
  }
}
