import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["banner", "nav"]

  connect() {
    console.log("oi")
    console.log(this.bannerTarget.offsetHeight)
    console.log(this.navTarget);
  }

  updateColor() {
    if (window.scrollY >= this.bannerTarget.offsetHeight) {
      this.navTarget.classList.remove("nav-transparent")
    } else {
      this.navTarget.classList.add("nav-transparent")
    }
  }
}
