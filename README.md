# NootLang 🐧
The future of programming is here. Finally, a programming language every Pingu can understand!
NootLang is the most efficient language ever created by a human. **Bask in its glory:**

## Examples
### Hello World
based on brainfuck hello world from wikipedia
```
noOTnoOTnoOTnoOTnoOTnoOTnoOTnoOTNOOtnooTnoOTnoOTnoOTnoOTNOOtnooTnoOTnoOTnooTnoOTnoOTnoOTnooTnoOTnoOTnoOTnooTnoOTNootNootNootNootNOotnOOTnooTnoOTnooTnoOTnooTNOotnooTnooTnoOTNOOtNootnOOTNootNOotnOOTnooTnooTnootnooTNOotNOotNOotnootnoOTnoOTnoOTnoOTnoOTnoOTnoOTnootnootnoOTnoOTnoOTnootnooTnooTnootNootNOotnootNootnootnoOTnoOTnoOTnootNOotNOotNOotNOotNOotNOotnootNOotNOotNOotNOotNOotNOotNOotNOotnootnooTnooTnoOTnootnooTnoOTnoOTnoot
```

### Official Documentation
[it's very good?](https://youtu.be/ygVWpw34cvQ)

### Other Examples
NootLang is incredibly easy to pick up thanks to our wide array of fabulous examples with excellent documentation!

[Don't be scared, check 'em out!!](examples)

## Features

### Commands
NootLang is based on brainfuck, and as such, is extremely readable and very simple. If you don't get it, you're basically just an idiot.

```lua
nooT	-- Increments the data pointer
Noot	-- Decrements the data pointer
noOT	-- Increments the data at the current cell
NOot	-- Decrements the data at the current cell
NOOt	-- Starts a while loop (while [data at pointer] ~= 0 do)
nOOT	-- Ends a while loop (end)
nOot	-- Divide data[dp + 1] by data[dp + 2] and store the result in data[dp]
noOt	-- Multiply data[dp + 1] by data[dp + 2] and store the result in data[dp]
NooT	-- bitwise or data[dp + 1] by data[dp + 2] and store the result in data[dp]
nOOt	-- bitwise and data[dp + 1] by data[dp + 2] and store the result in data[dp]
noot	-- Prints the current character at the pointer
NoOt	-- Reads a byte from the currently-open file and store it at the data pointer.
NoOT	-- Writes the byte at the data pointer to the currently-opened file.
NOoT	-- Prints an ASCII-ART penguin and exits the program.
NOOT	-- If no file is open, make a string containing data[dp] chars starting from data[dp + 1] and open the file at that path. (The data pointer ends up at the end of the string)
		-- Otherwise, close the currently open file.
```

### Type Safe?
Types are too confusing to Pingus, so NootLang doesn't bother with them at all!
Everything is just a "number." You could technically store a float at the current cell being pointed to. Or a byte. Signed/Unsigned. It doesn't matter!*


*Except when you go to read/write.

### Extremely well-written interpreter
There's definitely no bugs here! Totally solid.

### "What about bit-shifting or accepting input from the console"?
We worked very hard to create this monumental achievement in human history*, and we don't think asking for features is very respectful. It'll be there in NootLang++, just be patient!
In the meantime, just accept input from files and manipulate all of your values manually using addition/subtraction/multiplication/division???

* woke up with a hangover and... apparently I wrote this?

### Is it turing-complete?
come again?

### Under the MIT License
We want to share the love with everyone. That's why NootLang is proudly released under the MIT License, allowing for future generations of Pingus to share their creative works without legal restriction!