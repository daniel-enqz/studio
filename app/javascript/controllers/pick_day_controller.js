// The date picker (read the docs)
import flatpickr from "flatpickr";
import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
  flatpickr(this.element, {});
  }
}
