import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip-card"
export default class extends Controller {
  static targets = ["card"]

  connect() {
  }

  flip() {
    if (this.cardTarget.style.transform === 'rotateY(180deg)') {
      this.cardTarget.style.transform = 'rotateY(0deg)'
    } else {
      this.cardTarget.style.transform = 'rotateY(180deg)'
    }
  }
}
