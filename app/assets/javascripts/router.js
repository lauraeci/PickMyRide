// For more information see: http://emberjs.com/guides/routing/

Decidedly.Router.map(function() {
    this.resource("choice", function() {
        this.resource("choice", { path: ":choice_id" });
    });
});