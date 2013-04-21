
class MixpanelEvents
  constructor: ->
    @createEvents()

  createEvents: ->
    _self = @
    $('body').find("[data-type='mixpanel']").click (e) ->
      e.preventDefault()
      mixpanel.track "Click: #{$(this).data('name')}", {}, -> _self.setURL($(e.target))

  setURL: ($el) -> location.href = $el.attr('href') unless $el.data('redirect') == "false"


window.mixpanelEvents = new MixpanelEvents()
