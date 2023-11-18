import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    this.modal = new bootstrap.Modal(this.element, { keyboard: false})
    this.modal.show()

    this.element.addEventListener('hidden.bs.modal', (event) => {
      const modal_frame = document.querySelector('#modal')

      if (modal_frame) {
        modal_frame.src = ''
        modal_frame.innerHTML = ''
      }
    }) // Otherwise the frame actually remains active!
  }

  disconnect() {
    this.modal.hide()
  }
}
