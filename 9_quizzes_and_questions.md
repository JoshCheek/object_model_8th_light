Quizzes
-------

Quizzes I've made at various points in time (no guarantee they'll make sense with this material)

* [quiz 1](https://quizzes-ruby-object-model.herokuapp.com/1)
* [quiz 2](https://quizzes-ruby-object-model.herokuapp.com/2)
* [quiz 3](https://quizzes-ruby-object-model.herokuapp.com/3)


Questions
---------

To stretch your understanding, lets contemplate some questions:

* General
  * How many types of variables are there?
  * What is the difference between a local variable and an instance variable?
  * If I have no local variables, what must `abc` be?
  * What is `puts`?
  * What is `gets?"
  * What is `require`?
  * Where are toplevel methods defined?
* Local Variables
  * If you have a local variable named `abc` and an argument named `abc`, which one will you get when you ask for `abc`
  * When do local variables "die"? (as in they go away)
* Variables and methods
  * What is `puts`?
  * What kind of variable must arguments be?
* Method invocation
  * What object are methods looked up on?
  * If I call a method and don't say what object I'm calling it on, what object is it probably called on?
  * When you call a method, can it see the local variables of another method?
  * When you invoke a method, where does Ruby go to look for that method?
  * If Ruby can't find the method there, where will it look next?
  * If Ruby can't find the method there, either, where will it look next?
  * Will Ruby stop looking for the method? If So:
    * When?
    * Why?
    * What will it do at this point?
  * If String is an object, what do we know about it?
  * Where are the `String` class's methods stored?
  * Where is the `new` mehthod defined?
  * What is the first method that Ruby calls on an object?
  * What other methods are defined where `new` is defined? What do they do?
  * What is the algorithm for method lookup?
* Constants
  * Where are constants stored?
  * What constant holds the `String` class? (you can ask a class what constants it has with the `.constants` method)
  * What constant holds the `Object` class?
  * When do constants "die"? (as in they go away)
  * Can you reassign a constant?
  * Can you change the value of a constant?
  * What happens when Ruby can't find the constant?
* Instance variables
  * If you have two cars, one is a Camry, the other an F150, what instance variables exist? What are their values? Where do they exist?
  * What object are instance variables stored on?
  * How do you find methods that can operate on an instance variable?
  * Which objects can a method operate on?
  * When do instance variables "die"? (as in they go away)
  * If you access an instance variable without defining it, what will it return?
  * What does `attr_reader` do?
  * What does `attr_writer` do?
  * What does `attr_accessor` do?
  * Why does `colour = "blue"` not invoke the `colour=` method?
  * How many arguments does the `color=` method take?
* What is the point of an object? (Why does Ruby even bother with them?)
  * If you didn't have an object, how could you write the same code?
