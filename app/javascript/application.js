/* eslint no-console:0 */

// Rails functionality
import Rails from "@rails/ujs"
import "flowbite";

import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false


// Make accessible for Electron and Mobile adapters
window.Rails = Rails

require("@rails/activestorage").start()
import "@rails/actiontext"

// ActionCable Channels
import "./channels"

// Stimulus controllers
import "./controllers"

// Jumpstart Pro & other Functionality
import "./src/**/*"
require("local-time").start()

// Start Rails UJS
Rails.start()
