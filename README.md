# Prolog simple conifer generator
## About
We quickly overlooked the logical programming language Prolog as part of my studies and this is the simple project I made. It's nothing much, but maybe helps someone out, or you can play around with it. The code was made and run in SWISH (https://swish.swi-prolog.org/).

## Instruction
To use the code, copy all the text found in the file prolog-simple-conifer-generator.pl, then go to SWiSH, click the "Create a Program" option, paste the code on the left hand side space and use the right hand side console to call the predicate main() or any other with correct arguments. The predicate main() accepts a list of integers, then itterates through them producing sections of trees that start from 2 symbols and increase to the  so an example of a correct predicate call would be:
main([5, 8, 12])


## About
During on of my study courses we took a look at the logical programming language called Prolog. One of the tasks required us to make a program to generate a simple 2D conifer :evergreen_tree: tree. Since it was quite difficult to understand the language and to get started I decided to post the finished code here, so that it might help out somebody else. Also, not to get too humble, so I might have one more project on my portfolio. :laughing: The code was made for and run in SWISH environment accesible on (https://swish.swi-prolog.org/).

## Instructions
First open the SWISH website, then "Create a Program" button and click on it. This will open an empty program on the left hand side. Then, look for my code file caled prolog-simple-conifer-generator.pl and copy all of the code within it. Paste it into the left hand program window on the SWISH website. To interact with the program, you'll use the right hand side output window (top) and console/terminal (bottom). The program is designed to run from the main() predicate. The predicate main() only accepts a list as it's argument, and, in this case, only a list of integers for a successful output. To call the predicate main(), you simply need to write `main([int1, int2, ... intn])` with your desired integers in the console.

## Program description
The program reads each of the main() predicate argument list integers and for each of themn prints a part of the tree in the form of a pyramid that starts from 1 to 2 symbols at the peak (depending if the integer is even or not) and increases by 2 symbols each new line untill reaching the specific argument list integer. It also prints filler symbols on each side to both center it and make it look nice.
