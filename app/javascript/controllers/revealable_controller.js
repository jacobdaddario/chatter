// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "revealedElement" ]

  connect() {
  };

  open() {
  	if (this.revealedElementTarget.classList.contains("hidden")) {
  		this.revealedElementTarget.classList.remove("hidden");
  	};
  };

  close() {
  	if (!this.revealedElementTarget.classList.contains("hidden")) {
  		this.revealedElementTarget.classList.add("hidden");
  	};
  };

  toggle() {
    this.revealedElementTarget.classList.toggle("hidden");
  };
}
