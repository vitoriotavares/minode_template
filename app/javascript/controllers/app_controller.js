import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="app"
export default class extends Controller {
  static targets = ["modal"];

  launchModal(event) {
    let modalController = this.application.getControllerForElementAndIdentifier(
      this.modalTarget,
      "turbomodal"
    );
    modalController.open();
  }
}
