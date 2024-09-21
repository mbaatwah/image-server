import { Application } from "@hotwired/stimulus"

// import HelloController from "./hello_controller"
// application.register("hello", HelloController)



const application = Application.start()

console.log('ioeaheiao')

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application



export { application }
