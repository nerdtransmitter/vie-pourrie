import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="outdoor-input"
export default class extends Controller {
  connect() {
    console.log("coucou")
  }
}
