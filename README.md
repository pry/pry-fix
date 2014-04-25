Pry fixit adds some commands to help fix up your code when using pry for TDD.

## define-it

If you've just got a `NameError` bceause you are missing a class, then `define-it` will create
a new class definition in the correct file (based on the class name).

If you've just got a `NoMethodError` because you are missing a method, then `define-it` will create
a stub of that method and open your text editor within it so you can implement it.

## replace-it

Replace it replaces the current `binding.pry` line with the previous line you
just typed into Pry.

