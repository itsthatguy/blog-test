
class MixpanelEvents
  constructor: ->
    @createEvents()

  createEvents: ->
    _self = @
    $('body').find("[data-type='mixpanel']").click (e) ->
      e.preventDefault()
      target = if $(e.target).is('a') then $(e.target) else $(e.target).parents('a')
      mixpanel.track "Click: #{$(this).data('name')}", {}, -> _self.setURL(target)

  setURL: ($el) -> location.href = $el.attr('href') unless $el.data('redirect') == "false"


window.mixpanelEvents = new MixpanelEvents()
