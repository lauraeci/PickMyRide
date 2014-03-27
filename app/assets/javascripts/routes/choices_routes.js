Decidedly.ChoicesRoute = Ember.Route.extend({
    model: function() {
        return this.store.findAll('choice');
    }
});