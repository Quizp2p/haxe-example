package Collection;

class Schedules extends Base
{
    public function new()
    {
        super('schedules');

        publish.push('unpublished', unpublished);
        publish.push('published', published);
    }

    public function insert(userId, object)
    {
    	// Use super or add rules
        return true;
    }

    public function update(userId, objects, fields, modifier)
    {
    	// Use super or add rules
        return true;
    }

    public function remove(userId, object)
    {
    	// Use super or add rules
        return true;
    }

    private function unpublished()
    {
        return entries.find( {published : false } );
    }

    private function published()
    {
        return entries.find( { published : true } );
    }
}