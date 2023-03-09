import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    console.log("coucou")
    new StarRating(this.element, {
      classNames: {
          active: "gl-active",
          base: "gl-star-rating",
          selected: "gl-selected",
      },
      clearable: true,
      maxStars: 5,
      stars: null,
      tooltip: 'Comment tu te sens ?',
  })
  }
}