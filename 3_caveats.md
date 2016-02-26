Caveats
=======

* Newer MRI is more complex
* Links to MRI 1.4:
  * [Object definition](https://github.com/ruby/ruby/blob/ruby_1_4/ruby.h#L216-L224)
  * [Class definition](https://github.com/ruby/ruby/blob/ruby_1_4/ruby.h#L226-L231)
* My bindings are oversimplified
* [MRI bindings](https://github.com/ruby/ruby/blob/b3177141bffd8c9362f546767220091402f39607/vm.c#L1535)
* A good book if you want more is
  [Ruby Undar a Microscope](http://www.amazon.com/dp/1593275277)
* Not represented:
  * cref
  * cbase
  * global vars
  * class vars
  * Threads
  * Special "globals" like regex match `$1`
