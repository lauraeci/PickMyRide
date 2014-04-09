Pickmyride.ChoicesController = Ember.ArrayController.extend({
    actions: {
        createChoice: function () {
            // Get the choice title set by the "New Choice" text field
            var title = this.get('newTitle');
            if (!title.trim()) { return; }

            // Create the new Choice model
            var choice = this.store.createRecord('choice', {
                title: title
            });

            // Clear the "New Choice" text field
            this.set('newTitle', '');

            // Save the new model
            choice.save();
        }
    }
});