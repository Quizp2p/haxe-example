package utils;

class User
{
	private static var instance : User;

	public var signedIn : Bool;

    public static function getInstance() : User
    {
    	if( User.instance == null )
    	{
    		User.instance = new User();
    	}

        return User.instance;
    }

    public function new()
    {
        Meteor.getInstance().userId = 3; // TODO: Fake

        this.signedIn = Meteor.getInstance().userId;
    }
}