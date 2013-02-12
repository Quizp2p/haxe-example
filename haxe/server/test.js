Schedules = new Meteor.Collection('schedules');

Meteor.publish("all", function () 
{
	return Schedules.find({});
});

Meteor.publish("unpublished", function () 
{
	return Schedules.find({published:false});
});

Meteor.publish("published", function () 
{
	return Schedules.find({published:true});
});

Schedules.allow(
{
	insert: function(userId, schedule)
	{
		return true;
	},
	update: function(userId, schedules, fields, modifier)
	{
		return true;
	},
	remove: function(userId, schedules)
	{
		return true;
	}
});