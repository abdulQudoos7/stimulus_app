import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static values = {
        visible: Boolean,
    }

    connect(){
        console.log("Visibility controller connected...")
        this.updateVisibility()
    }

    updateVisibility(){
        console.log(this)
        if (this.visibleValue) {
            this.element.style.display = "block";
        }else {
            this.element.style.display = "none";
        }
    }
}