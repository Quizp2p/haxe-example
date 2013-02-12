package views;

import utils.Meteor;

class LoginUIControl
{
    public function new()
    {
        //Meteor.getInstance().render( untyped __js__('function () { return Template.account_login() }') );

        untyped __js__('document.body.appendChild( Meteor.render( function () { return Template.account_login() } ) )');
    }
}