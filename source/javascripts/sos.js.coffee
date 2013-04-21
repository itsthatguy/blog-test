class Sos
  constructor: ->
    $('.toggle-topbar').click (e) ->
      e.preventDefault()

window.sos = new Sos()