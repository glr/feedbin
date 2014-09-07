root = window

#root.Meteor.loginWithGithub
#  requestPermissions: ['user', 'public_repo'],
#  (err) ->
#    if err
#      root.Session.set('errorMessage', err.reason || 'Unknown error')

root.Template.title.title = ->
  "The Feed Bin"

root.Template.hello.greeting = ->
  "Welcome to The Feed Bin."

root.Template.hello.person = ->
  _.first(root.Meteor.user().emails).address

root.Template.hello.events(
  'click input[type="button"]': (event) ->
    root.Restaurants.insert(
      name: $('input[name="restaurantName"]').val(),
      type: $('input[name="restaurantType"]').val(),
      dateAdded: new Date()
      votes: 0
      lastSelected: "never";
    );
)
