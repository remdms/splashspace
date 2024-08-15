import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-to-cards"
export default class extends Controller {
  static targets = ['section']
  connect() {
    this.scrollToCards();
  }

  scrollToCards() {
    const navbarHeight = 50; // Replace with your navbar's height in pixels

    if (this.hasSectionTarget) {
        const sectionTop = this.sectionTarget.offsetTop;
        // Scroll instantly to the cards section
        this.sectionTarget.scrollIntoView({ behavior: 'instant' });
        window.scrollBy({left:0, top: -navbarHeight, behavior: 'instant'});
    }
}
}
