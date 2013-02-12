import js.Dom;

import utils.User;

import views.LoginUIControl;
import views.DashboardUIControl;

class Main
{
    public static function main() 
    {
        js.Lib.window.onload = function(e : Event) : Void 
        {
            new Main();
        };
    }

    public function new()
    {
        if( User.getInstance().signedIn )
        {
            untyped console.log("load portal");

            new DashboardUIControl();
        }
        else
        {
            untyped console.log("not logged in");

            new LoginUIControl();
        }
    }
}