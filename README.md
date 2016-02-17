# caesar_cipher

### An exercise in Ruby String manipulation from [The Odin Project](http://www.theodinproject.com/ruby-programming/building-blocks).  

Caesar_cipher takes two parameters: a string named message and an integer.

Each letter of the message is shifted by the integer inputted, along its position in the alphabet.

Letters shifted past "Z", were "wrapped around" back to the beginning of the alphabet.  For example, "X" shifted 6 positions returns  "D".

Caesar_cipher retains case sensitivity and ingores punctuation, whitespace, and numbers.  An integer of any reasonable size can be inputted as a parameter.

### Expected Outputs

 caesar_cipher("What a String!", 5)
 
 ">> Bmfy f xywnsl!"

  caesar_cipher("What a String!", 0)
 
 ">> What a String!"

   caesar_cipher("What a String!", 26)
 
 ">> What a String!"

   caesar_cipher("What a String!", 8675309)
 
 ">> Patm t lmkbgz!"

 Caesar_cipher has been implemented to prompt the user for its parameters when starting up through the command line.