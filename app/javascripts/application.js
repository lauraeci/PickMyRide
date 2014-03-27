// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require decidedly

// for more details see: http://emberjs.com/guides/application/
Decidedly = Ember.Application.create({
    rootElement: '#decidedly'
});

Decidedly.Choices = Ember.Object.extend();

Decidedly.Choices.reopenClass({
    all:function () {
        var choices = [];
        return $.getJSON("/api/v1.choices_controller.json").then(function (response) {
            response.choices.forEach(function (choices) {
                choices.push(Decidedly.Choices.create(choices));
            });
        });
        return choices;
    }
});
//= require_tree .
