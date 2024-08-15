import { Controller } from "@hotwired/stimulus"



// Connects to data-controller="navbar-scroll-downl"
export default class extends Controller {
  static targets = ["navbar"]

  connect() {
  }

   handleScroll() {
    const currentScrollPosition = window.scrollY
    const maxScroll = 300
    let opacity

    if (currentScrollPosition > this.lastScrollPosition) {
      // Défilement vers le bas
      opacity = Math.max(1 - currentScrollPosition / maxScroll, 0)
    } else {
      // Défilement vers le haut
      opacity = Math.max(currentScrollPosition / maxScroll, 1)
    }

    this.element.style.backgroundColor = `rgba(255, 255, 255, ${opacity})`
    this.lastScrollPosition = currentScrollPosition
  }
}
