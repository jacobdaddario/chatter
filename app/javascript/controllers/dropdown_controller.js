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
  static targets = [ "mobileMenu" ]

  connect() {
  };

  open() {
  	if (this.mobileMenuTarget.classList.contains("hidden")) {
  		this.mobileMenuTarget.classList.remove("hidden");
  	};
  };

  close() {
  	if (!this.mobileMenuTarget.classList.contains("hidden")) {
  		this.mobileMenuTarget.classList.add("hidden");
  	};
  };
}
