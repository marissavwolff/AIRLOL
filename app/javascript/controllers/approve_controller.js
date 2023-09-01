import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="approve"
export default class extends Controller {
  static targets = ["status"]
  // static values = {booking: Number}
  static values = { booking: { type: Number, default: 1 } }

  connect() {
    console.log("test")
    console.log(this.statusTarget)
  }

  check() {
    console.log(this.statusTarget.data)
    console.log(this.bookingValue)
    let url = `/approve_booking/${this.bookingValue}`
    console.log(url)
    fetch(url)
      .then(() => {
      window.location.reload();
  })
  }

  decline() {
    console.log(this.statusTarget.data)
    console.log(this.bookingValue)
    let url = `/decline_booking/${this.bookingValue}`
    console.log(url)
    fetch(url)
      .then(() => {
      window.location.reload();
  })
  }
}
