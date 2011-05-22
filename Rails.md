General Guidelines
==================

Indent two spaces inside a block.
Use HAML/Sass

Migrations
---------------

* Don't put database specific code into your migrations.

It's a limitation of using an ORM. ActiveRecord's migration functionality provides enough features that
you can do most of what you need through the interface it provides. There are definitely cases when you
would want to use some database specific features in a table. Avoid it whenever possible. If you absolutely
must do something DB specific, mark or document the migration somehow.

* Check db/schema.rb into your version control.

If you're worried about running into merge issues, don't. If you do run into a conflict, all you have to do is
either `rake db:schema:dump` (to dump your schema) or `rake db:migrate` (to bring yours current).

The database schema is part of the source code. People don't look at it that way, but because of how ActiveRecord
works, if a field/column doesn't exist in the database, then your code is missing a method. That's code to me.

* When starting an already existing project with a large number of migrations (usually more than 10),
do NOT `rake db:migrate`. Load the schema. `rake db:schema:load`. Even better if you can load a dump.

In the course of a database's lifetime, fields get dropped and added. You don't want to replay that entire
lifestory just to get a database up.

In the case where you have a migration with database specific code, you can still load the schema and then
execute `rake db:migrate:redo VERSION=my_version` where my_version is that migration. But the best case
is to get an existing database dump with data and just load that.

* Code your seed file to be able to run multiple times.

Because you are not going to need to seed data only once, especially early on in your project. All you have
to do is add a little conditional check for some piece of data that would exist if that block of the seed was
already executed and skip if it exists.


Views
---------

* Use the proper extension format for file names.
   filename.extention.formatter

E.g for HAML `filename.html.haml`
E.g for Javascript `filename.js.erb`

* Avoid Javascript in an HTML view.

Please avoid putting any Javascript in .html extension views. This leads
to ambiguety and general confusion. 

General guideline, create a helper method that automatically includes a
partial of the current action in javascript format.

`_action.js`
