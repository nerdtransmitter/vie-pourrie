import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dot"
export default class extends Controller {
  static targets = ["dot", "card"]

  connect() {
    console.log(document.getElementsByClassName("swiper-slide-active"))
  }

  //recupere la card avec la classe active

  //recupere le numero de cette card
  // applique une nouvelle classe au dot qui a le mm numero


}
