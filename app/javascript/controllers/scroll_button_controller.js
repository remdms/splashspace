import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-button"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    this.previousScrollPosition = window.scrollY;
    this.element.style.transition = "opacity 0.3s ease-in-out";
    window.addEventListener("scroll", this.handleScroll.bind(this));
  }

  handleScroll() {
    const currentScrollPosition = window.scrollY;

    if (currentScrollPosition > this.previousScrollPosition) {
      // Scrolling down
      this.element.style.opacity = "0";
    } else {
      // Scrolling up
      this.element.style.opacity = "1";
    }

    this.previousScrollPosition = currentScrollPosition;
  }
}
