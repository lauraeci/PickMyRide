// For more information see: http://emberjs.com/guides/routing/

Pickmyride.Router.map(function() {
    this.resource("choices", function() {
        this.resource("choices", { path: ":choice_id" });
    });
});