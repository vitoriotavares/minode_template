import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="turbomodal"
export default class extends Controller {
  open() {
    const el = document.querySelector("#basic-modal");
    const modal = tailwind.Modal.getOrCreateInstance(el);
    modal.show();
  }

  submitEnd(e) {
    console.log(e);
    if (e.detail.success) {
      this.close();
    }
  }

  close() {
    const el = document.querySelector("#basic-modal");
    const modal = tailwind.Modal.getOrCreateInstance(el);
    modal.hide();
  }
}
