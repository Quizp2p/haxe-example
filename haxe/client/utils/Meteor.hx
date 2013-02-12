package utils;

class Meteor
{
	private static var instance : Dynamic;

    public static function getInstance() : Dynamic
    {
    	if( Meteor.instance == null )
    	{
    		Meteor.instance = untyped __js__('window.Meteor');
    	}

        return Meteor.instance;
    }
}