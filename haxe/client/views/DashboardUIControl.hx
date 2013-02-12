package views;

import utils.Meteor;

import utils.Template;

class DashboardUIControl
{
    private var meteor : Dynamic; // Meteor
    private var template : Dynamic; // Template

    private var schedules : Dynamic; // Collection

    public function new()
    {
        meteor = Meteor.getInstance();
        template = Template.getInstance();

        var element = meteor.render( dashboard_index );

        js.Lib.document.body.appendChild( element );
    }

    private function dashboard_index()
    {
        meteor.subscribe('all');

        schedules = untyped __js__('new Meteor.Collection("schedules")');

        template.dashboard_index.unpublished = publishFilter;

        template.dashboard_index.published = unpublishFilter;

        template.dashboard_index.events(
        {
            'click .publish'   : function() : Void { publishHandler( untyped __js__('this') ); },
            'click .unpublish' : function() : Void { unpublishHandler( untyped __js__('this') ) ; },
            'click .remove'    : function() : Void { removeHandler( untyped __js__('this') ); },
            'click .add' : function() : Void { addHandler(); }
        });

        return template.dashboard_index();
    }

    private function publishFilter()
    {
        return schedules.find({published:false});
    }

    private function unpublishFilter()
    {
        return schedules.find({published:true});
    }

    private function publishHandler(schedule) : Void
    {
        schedules.update( { _id: schedule._id }, { '$set': {published: true}} );
    }

    private function unpublishHandler(schedule) : Void
    {
        schedules.update( { _id: schedule._id }, { '$set': {published: false}} );
    }

    private function removeHandler(schedule) : Void
    {
        schedules.remove( { _id: schedule._id } );
    }

    private function addHandler() : Void
    {
        schedules.insert( {  published: false, description: 'New item' } );
    }
}