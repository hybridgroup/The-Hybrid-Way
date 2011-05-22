General Formatting and Syntax
=====================

The general rule of thumb is: if it works and isn't too slow, go with whatever looks pretty.
You can always optimize later.

* Still in progress will update when I have time *

Formatting
---------------

* Indent with "soft tab two" (two spaces in place of a tab)

Most (good) editors have an option in their preferences to change this. As will be stated
in the styling guidelines, our HAML templates use soft tabs as well.

* Indent every inner block once. Twice if inside an array or hash declaration.

Pretty obvious, if you have a block, indent it.
(Please avoid the use of big hash tables and method chaining.)

    long_hash = {:a => 'b', :c => 'd', :e => 'f', :g => 'h', :i => 'j', :k => 'l', :m => 'n',
        :o => 'p', :q => 'r', :s => 't', :u => 'v', :x => 'y', :z => 0}
        
    # Don't do this, but if you really have to...
    method_chain = long_hash.invert.entries.reverse.join.upcase.split('').size.hash.chr.
        to_i.next.floor.odd?.hash.pred.round.size.hash.succ.hash.next.hash.chr

* The protected and private keywords count as starting a block

Indent protected and private method definitions

    class Example

      protected

        def pro
        end

      private

        def priv
        end
    end

* Separate method definitions by a blank line

      def method1
      end

      def method2
      end

* List methods in ascending alphabetical order

      def a_method
      end

      def b_method
      end

      def xtrange_method
      end

* The long-line limit is 80 characters

Any line longer than 80 characters probably needs to be split multiple lines. Most editors
allow you to set the long line limit and will show a bar to the right hand side.

* Trailing whitespace is useless, remove it.

* Put a space after a comma when listing elements

      [a,b,c,g,h] should be [a, b, c, d]
      {:a=>1,:b=>2,:c=>3} should be {:a => 1, :b => 2, :c => 3}

Syntax and Usage
------------------------

* Use the ternary operator for single line if ... else

        ternary = true ? 'yes' : 'no'

* You don't need a semicolon

This is Ruby. What's a semicolon?

* Explicit returns only when necessary

* Use { ... } for single line blocks and do ... end for multiline blocks

* Reducing or Injecting? Use |m, i|

Memory and Item or Iterator

* Choose length over size; but count on ActiveRecord

On ActiveRecord associations, .count will issue a "SELECT COUNT(*) FROM ...." query.
If you call length or size, it will try to pull all the associations from the db and then
count them (if it hasn't already been loaded). You also can't specify conditions with
length or size. Remember: You can always count on ActiveRecord.
To see why you should use length over size, try calling size on a Fixnum.

    irb:0> 5.size
    => 8

* Write for 1.8.7 but don't try to break 1.9.2 (or newer)

* Meta programming will get over your head when you least expect it, be careful


Common Sense
--------------------

* Make the code clean first and then use a profiler to deal with
  performance issues.

* The monkey is free! Monkey Patching / Freedom Patching should be used sparingly

Monkeys roaming free at the zoo could be both a good thing and a bad thing.
Monkey Patching is one of the more powerful features of Ruby. But as with all power,
don't let it consume you. If you find a problem/conflict with a gem or library, contribute a patch.

* Keep It Simple Stupid

* Don't Repeat Yourself


Testing
-------------

* Starting with tests isn't what you want unless you know exactly how things work (and that it will work that way).

    TDD and BDD tutorials neglect to mention a very crucial 0th step: the prototype. You have to have a working
    prototype, otherwise the test is too general. It's going to be painful to have to keep rewriting the tests. Get your
    prototype working--either in your head or as proofs of concept--and then write tests for the real thing.







