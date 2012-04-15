class Encuesta.Views.QuizzesIndex extends Backbone.View

  template: JST['quizzes/index']
  # Turns out backbone will create a el of tagName
  # and then insert actual template into this.
  # god only knows why...
  tagName: "ol"

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    # so temp - is actualyy rendered template.
    # and it passed into the @el element of the dom.
    temp = @template(entries: @collection)
    $(@el).html(temp)
    # return this to chain been avaliable
    this
