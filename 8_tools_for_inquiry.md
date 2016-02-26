Tools for inquiry
-----------------

These will help you answer questions you have,
such as the ones in the next section.

* Easily available:
  * Binding:
    * `self` a keyword
    * `caller` a method called on self (it's private)
    * `local_variables` a method called on self (private)
    * Other interesting methods:
      `Binding.instance_methods - Object.new.methods`
  * Objects:
    * `some_object.class` careful, this one lies
    * `some_object.methods` methods this obj can call
    * `some_object.instance_variables`
    * `some_object.instance_variable_set("@variable_name", "value")`
    * `some_object.instance_variable_get("@variable_name")`
  * Classes
    * `SomeClass.constants`
    * `SomeClass.instance_methods(false)`
    * `SomeClass.superclass`
    * `SomeClass.ancestors`
    * Generally everything in: `puts Module.instance_methods - Object.instance_methods`
  * Methods
    * `some_object.method(:method_name).owner`
    * `some_object.method(:method_name).source_location`
    * `some_method.bind(some_object).call`
  * Blocks
    * `some_block.source_location`
  * Another one I made that I haven't looked through to compare to this list:
    https://github.com/JoshCheek/ruby-object-model/blob/master/obj-model-cheatsheet.pdf
* [Synseer](http://synseer.herokuapp.com/)
  a Game to learn Ruby syntax.
* [Seeing Is Believing](https://github.com/JoshCheek/seeing_is_believing/)
* [Pry](http://pryrepl.org/)
* Visualizing the callstack / watching how Ruby moves through a file
  Clone this: https://github.com/JoshCheek/object-model-with-lovisa
  and then run `bin/spelunk` against a Ruby file.
* Seeing compiled methods
  https://gist.github.com/JoshCheek/a8e9dbb6f54fd1a69216
* `ObjectSpace.reachable_objects_from`,
  using object associations to see the included class and singleton class
  https://gist.github.com/JoshCheek/cf7f587258cc721755d6
* Implement a Ruby interpreter! [my version](https://github.com/JoshCheek/book_club_interpreter)
* Heap dumping
  ```ruby
  require 'objspace'

  class A
  end

  a = A.new
  p object_id: a.object_id

  File.open "heap.json", "w" do |f|
    ObjectSpace.dump_all output: f
  end
  ```
* Hooking into events in Ruby
  ```ruby
  trace = TracePoint.new(:raise) do |tp|
    p [tp.lineno, tp.event, tp.raised_exception]
  end

  trace.enable

  # :line         execute code on a new line
  # :class        start a class or module definition
  # :end          finish a class or module definition
  # :call         call a Ruby method
  # :return       return from a Ruby method
  # :c_call       call a C-language routine
  # :c_return     return from a C-language routine
  # :raise        raise an exception
  # :b_call       event hook at block entry
  # :b_return     event hook at block ending
  # :thread_begin event hook at thread beginning
  # :thread_end   event hook at thread ending
  ```
* Other versions of this material
  * https://github.com/CodePlatoon/curriculum/blob/master/phase1/how-ruby-works.md
  * https://github.com/JoshCheek/object-model-with-lovisa
  * https://github.com/JoshCheek/object-model-hash-style
  * https://github.com/JoshCheek/ruby-object-model
