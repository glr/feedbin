root = window

root.Restaurants = new root.Meteor.Collection('restaurants');

root.Template.restaurants.restaurants = root.Restaurants.find({}, {sort: {votes: -1}})

root.Template.restaurants.events(
  'click input[type="button"][value="delete"]': (event) ->
    root.Restaurants.remove(this._id)
  'click input[type="button"][value="vote"]': (event) ->
    root.Restaurants.update(this._id, {$inc: {votes: 1}})
)
