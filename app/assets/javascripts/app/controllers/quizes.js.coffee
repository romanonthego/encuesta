# just some shortcuts
$ = jQuery.sub()
Quize = App.Quize

class QuizesIndex extends Spine.Controller
  events:
  #   'click [data-type=edit]':    'edit'
  #   'click [data-type=destroy]': 'destroy'
  #   'click [data-type=show]':    'show'
    'click [data-type=new]':     'new'

  constructor: ->
    @log('index controller in quize stack.')
    super
    Quize.bind 'refresh change', @render
    Quize.fetch()
    # @render()

  render: =>
    # @log('render envoked')
    quizes = Quize.all
    # @log(@el)
    @html @view('quizes/index')(quizes: quizes)

  new: ->
    @navigate '/quizes/new'


class QuizesNew extends Spine.Controller
  constructor: ->
    @log('new action was envoled!')
    super
    @active @render

  render: =>
    # @log(@el)
    @html @view('/quizes/new')

class App.Quizes extends Spine.Stack
  controllers:
    index: QuizesIndex
    new: QuizesNew
    
  routes:
    '/quizes' : 'index'
    '/quizes/new' : 'new'
    
  default: 'index'
  className: 'stack quizes'