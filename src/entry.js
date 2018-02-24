import Elm from './elm/Main.elm'

import './static/index.html'

import 'normalize.css'
import './static/css/layout.css'

import fullPage from './static/js/fullPage.js'
import updatePosition from './static/js/helper.js'

const app = Elm.Main.fullscreen()

app.ports.ready.subscribe( _ => {
  fullPage()
  updatePosition()
} )

app.ports.setTitle.subscribe( title =>
  document.title = title
)
