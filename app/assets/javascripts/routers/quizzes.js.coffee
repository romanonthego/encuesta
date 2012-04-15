class Encuesta.Routers.Quizzes extends Backbone.Router
  # It takes a routes hash - makes it match given path to the function
  routes:
    '' : 'index'

  initialize: ->
    @quizes = new Encuesta.Collections.Quizzes()
    @quizes.fetch()

  # index view
  index: ->
    view = new Encuesta.Views.QuizzesIndex(collection: @quizes)
    $('#app').html(view.render().el)
    # console.log('quizes index path')

