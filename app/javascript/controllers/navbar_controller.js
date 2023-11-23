import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("oi")
  }

  updateColor() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.remove("nav-transparent")
    } else {
      this.element.classList.add("nav-transparent")
    }
  }
}
