package Collection;

class Base
{
    public entries : Dynamic; // Meteor.Collection

    public publish : Array = new Array();

    public function new(name : String)
    {
        // entries =  new Meteor.Collection(name);
    }

    public function insert(userId, object)
    {
    	return false;
    }

    public function update(userId, objects, fields, modifier)
    {
    	return false;
    }

    public function remove(userId, object)
    {
    	return false;
    }
}