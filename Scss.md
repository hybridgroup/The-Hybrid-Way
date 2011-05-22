General Guidelines
==================

Indent two spaces inside a block.

Syntax
=====

* Alphabetize everything.

Wrong

Vertical Style

    .some-style {
      width: 100%;
      color: #000;
      text-transform: uppercase;
    }


Horizontal Style

    .some-style {width: 100%; color: #000; text-transform: uppercase;}

This would be wrong. Please alphabetize from A-Z.

Correct

Vertical Style

    .some-style {
      color: #000;
      text-transform: uppercase;
      width: 100%;
    }


Horizontal Style
    .some-style {color: #000; text-transform: uppercase; width: 100%;}

* Use the proper extension format for file names.

filename.extention.formatter

E.g for HAML `filename.html.haml`

E.g for Javascript `filename.js.erb`

* Avoid Javascript in an HTML view.

Please avoid putting any Javascript in .html extension views. This leads
to ambiguety and general confusion. 

General guideline, create a helper method that automatically includes a
partial of the current action in javascript format.

_action.js
