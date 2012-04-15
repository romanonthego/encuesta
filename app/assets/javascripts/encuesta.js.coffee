window.Encuesta =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    # init the router for Quizes
    new Encuesta.Routers.Quizzes()
    Backbone.history.start()
    # console.log('Backbone init!')

$(document).ready ->
  Encuesta.init()
