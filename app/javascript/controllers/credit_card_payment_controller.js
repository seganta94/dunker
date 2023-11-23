import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="credit-card-payment"
export default class extends Controller {
  connect() {

    console.log("Hello from stimulus controles")

      //https://dribbble.com/shots/2291259-Credit-Card-Checkout
    //https://images.unsplash.com/photo-1507038772120-7fff76f79d79?auto=format&fit=crop&w=1867&q=80

    var model = document.querySelector(".model");

    function fadeIn () {
      console.log('fadein')
      model.className += " fadeIn";
    }

  }
}
