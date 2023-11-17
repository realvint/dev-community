import { Controller } from "@hotwired/stimulus"

document.addEventListener("turbo:before-cache", function() {
  // remove modal since it will be opened automatically on connect
  // we need to do that by removing parent turbo-frame id='modal' which has src
  let modals = document.querySelectorAll('[data-controller="modal"]')
  modals.forEach(function(modal) {
    let parentTurboFrame = modal.closest('turbo-frame')
    if (parentTurboFrame) {
      parentTurboFrame.innerHTML = ''
      parentTurboFrame.src = null
    } else {
      modal.remove()
    }
  })
})

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    this.modal = new bootstrap.Modal(this.element, { keyboard: false})
    this.modal.show()
  }

  disconnect() {
    this.modal.hide()
  }

  submitEnd(event) {
    this.modal.hide()
  }
}
