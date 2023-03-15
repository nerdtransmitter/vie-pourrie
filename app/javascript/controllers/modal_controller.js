import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["checkbox", "modal"] 

  love(){
    const myModal = new Modal(this.modalTarget)
    this.modalTarget.addEventListener('hidden.bs.modal', event => {
      this.checkboxTarget.checked = false
    })
    setTimeout(()=> {
      myModal.show()
    },800)
  }

}
