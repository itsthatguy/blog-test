class Sos
  constructor: ->
    $('#menu-button').click (e) ->
      e.preventDefault()

    $('.top-bar-section').find('li a').click (e) ->
      $('.top-bar.expanded').removeClass('expanded')

window.sos = new Sos()