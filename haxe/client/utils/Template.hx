package utils;

class Template
{
	private static var instance : Dynamic;

    public static function getInstance() : Dynamic
    {
    	if( Template.instance == null )
    	{
    		Template.instance = untyped __js__('window.Template');
    	}

        return Template.instance;
    }
}