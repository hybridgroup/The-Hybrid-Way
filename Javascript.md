General Formatting and Syntax
=====================

Don't really have a quick description right now, however, I recommend you learn how to utilize asynchronous events.

* Still in progress will update when I have time *

Formatting
---------------


Syntax and Usage
------------------------

* Avoid inline Javascript when possible. Hook to events using whatever Javascript framework you're using.

However, having script tags in your html templates is fine. Just don't do an inline on[*event] hook.


* Remember that returning false on a jQuery callback is not the same as returning false on an inline callback.

The main difference is that return false; on a jQuery callback executes event.preventDefault() and
event.stopPropagation() as well as returns out of the function. Returning false on an inline callback only
prevents the default.


* Use event.preventDefault() or event.stopPropagation() if you only need one of it.

event.preventDefault() stops whatever the default behavior of the element from executing (eg an anchor
redirecting). event.stopPropagation() stops event bubbling up into the parent elements.


Common Sense
--------------------

* Don't cram everything into one big javascript file if only certain pages require it.

Especially true if those certain pages are rarely accessed.







