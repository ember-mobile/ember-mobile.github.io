`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'ember-cli-framework7', ->
    @route 'example'

`export default Router`
