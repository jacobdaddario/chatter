import { Controller } from "stimulus"

export default class extends Controller {
	static targets = [];

	connect() {
		window.setTimeout(() => { this.element.remove() }, 5000);
	};
};

