root = window

root.Restaurants = new root.Meteor.Collection('restaurants');

root.Template.restaurants.restaurants = root.Restaurants.find()

root.Template.restaurants.events(
  'click input[type="button"]': (event) ->
    root.Restaurants.remove(this._id)
)
root.Template.restaurants.restaurant.lastSelected = this.lastSelected || "Not Yet Selected"