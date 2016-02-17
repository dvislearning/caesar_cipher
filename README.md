# caesar_cipher

### An exercise in Ruby String manipulation from [The Odin Project](http://www.theodinproject.com/ruby-programming/building-blocks).  

Caesar_cipher takes two parameters: a string message and an integer.

Each letter of the message is shifted by the integer inputted, along its position in the alphabet.

Letters shifted past "Z", are "wrapped around" back to the beginning of the alphabet.  For example, "X" shifted 6 positions returns  "D".

Caesar_cipher retains case sensitivity and ignores punctuation, whitespace, and numbers.  An integer of any reasonable size can be entered as a parameter.

### Expected Outputs

 caesar_cipher("What a String!", 5)
 
 ">> Bmfy f xywnsl!"

  caesar_cipher("What a String!", 0)
 
 ">> What a String!"

   caesar_cipher("What a String!", 26)
 
 ">> What a String!"

   caesar_cipher("What a String!", 8675309)
 
 ">> Patm t lmkbgz!"

 Caesar_cipher has been implemented to prompt the user for parameters when starting up through the command line.