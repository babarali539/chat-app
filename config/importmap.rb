# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.2/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.2/lib/index.js"
pin "stimulus_reflex", to: "https://ga.jspm.io/npm:stimulus_reflex@3.5.0-pre8/javascript/stimulus_reflex.js"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js"
pin "@rails/actioncable", to: "https://ga.jspm.io/npm:@rails/actioncable@7.0.1/app/assets/javascripts/actioncable.esm.js"
pin "cable_ready", to: "https://ga.jspm.io/npm:cable_ready@5.0.0-pre8/javascript/index.js"
pin "morphdom", to: "https://ga.jspm.io/npm:morphdom@2.6.1/dist/morphdom.js"
pin "stimulus", to: "https://ga.jspm.io/npm:stimulus@3.0.1/dist/stimulus.js"
