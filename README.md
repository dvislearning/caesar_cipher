# caesar_cipher

### An exercise in Ruby String manipulation from [The Odin Project](http://www.theodinproject.com/ruby-programming/building-blocks).

[Odin Project Assignment on testing](http://www.theodinproject.com/ruby-programming/testing-ruby)

Caesar_cipher takes two parameters: a string message and an integer.

Each letter of the message is shifted by the integer inputted, along its position in the alphabet.

Letters shifted past "Z", are "wrapped around" back to the beginning of the alphabet.  For example, "X" shifted 6 positions returns  "D".

Caesar_cipher retains case sensitivity and ignores punctuation, whitespace, and numbers.  An integer of any reasonable size can be entered as a parameter.  It also handles negative numbers.

Edit:
This project was revisited a few weeks later and restructured to incorporate testing with RSpec.