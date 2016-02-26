Singleton Classes
-----------------

* Q: How can we add a method to a single object?
* A: Insert a class at the head of its inheritance linked list.
     Thus it will search this before its current class.

This is called the singleton class, it's what happens when you
see any of these:


The so-called "class methods":

```ruby
class Message < ActiveRecord::Base
  def self.posted
    where posted: true
  end
end
```


Main looks fancy and special:

```ruby
# the "real" main
self # => main
self.singleton_class.instance_methods(false)
# => [:inspect, :to_s]


# lets make our own
my_main = Object.new
my_main # => #<Object:0x007fe4d1975f78>
def my_main.inspect
  "main"
end
my_main # => main

my_main.singleton_class.instance_methods(false)
# => [:inspect]
```


That wonky class/shift shit:

```ruby
self.singleton_class # => #<Class:#<Object:0x007fc8708da640>>
class << self
  self               # => #<Class:#<Object:0x007fc8708da640>>
  def inspect
    'not main'
  end
end

self # => not main
```
