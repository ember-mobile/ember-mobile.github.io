`import Ember from 'ember'`
`import ajax from 'ic-ajax'`

EmberCliFramework7IndexRoute = Ember.Route.extend
  model: ->
    new Ember.RSVP.Promise (resolve, reject) ->
      $.ajax
        type: 'GET'
        crossDomain: true
        url: 'https://rawgit.com/ember-mobile/ember-cli-framework7/master/README.md'
        success: (data) ->
          resolve data
        error: (res) ->
          reject res

    # $.ajax
    #   type: 'GET'
    #   dataType: 'jsonp'
    #   crossDomain: true
    #   url: 'https://rawgit.com/ember-mobile/ember-cli-framework7/master/README.md'

`export default EmberCliFramework7IndexRoute`
