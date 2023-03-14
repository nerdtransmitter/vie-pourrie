import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  static targets = ["journal", "wishlist", "mood"]

  connect() {
  }

  // au click on veut display la card correspondante
  displayJournal() {
    // add card hidden on every target
    if (this.journalTarget.classList.contains("card-hidden")) {
      this.hideAllCards()
      this.journalTarget.classList.remove("card-hidden") // make it VISIBLE
    } else {
      this.hideAllCards()
    }
  }

  displayWishlist() {
    if (this.wishlistTarget.classList.contains("card-hidden")) {
      this.hideAllCards()
      this.wishlistTarget.classList.remove("card-hidden") // make it VISIBLE
    } else {
      this.hideAllCards()
    }
  }

  displayMood() {
    if (this.moodTarget.classList.contains("card-hidden")) {
      this.hideAllCards()
      this.moodTarget.classList.remove("card-hidden") // make it VISIBLE
    } else {
      this.hideAllCards()
    }
  }


  hideAllCards() {
    this.journalTarget.classList.add("card-hidden")
    this.wishlistTarget.classList.add("card-hidden")
    this.moodTarget.classList.add("card-hidden")
  }
}
