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
  static targets = [ "input" ];

  connect() {
    this.inputTarget.focus()
  };

  // This whole weird conditional structure does not feel right. Will probably
  // need to refactor everything at some point. Maybe move into different
  // controllers.
  remove() {
    if (event.currentTarget == document) {
      if (this.element.contains(event.target)) {
      	return null
      };
    };

    var oldText = document.querySelector(`[data-chatroom-id='${this.data.get("parent-id")}'`);

    if (!(oldText == null)) {
      oldText.querySelector("[data-behavior='chatroom-name']")
             .classList
             .remove("hidden");
    };

    this.element.remove();
  };

  resetInput() {
    var oldText = document.querySelector(`[data-chatroom-id='${this.data.get("parent-id")}'`);

    if (!(oldText == null)) {
      if (oldText.querySelector("[data-behavior='chatroom-name']").nodeName == "DIV") {
        var oldName = oldText.querySelector("[data-behavior='chatroom-text']").value;
      } else {
        var oldName = oldText.querySelector("[data-behavior='chatroom-name']").text;
      };

      this.inputTarget.value = oldName
    } else {
      this.inputTarget.value = ""
    };
  }
};
