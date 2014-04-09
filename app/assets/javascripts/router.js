// For more information see: http://emberjs.com/guides/routing/

Pickmyride.Router.map(function() {
    this.resource("choice", function() {
        this.resource("choice", { path: ":choice_id" });
    });
});