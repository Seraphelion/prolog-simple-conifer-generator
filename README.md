# Table of Contents
- [About](#about)
- [Instructions](#instructions)
- [Description](#Description)

# About
During on of my study courses we took a look at the <u>logical programming language</u> called **Prolog**. One of the tasks required us to make a program to generate a simple 2D conifer tree.  :evergreen_tree: Since it was quite difficult to understand the language and to get started I decided to post the finished code here, so that it might help out somebody else. Also, not to get too humble, so that I might have one more project on my portfolio. :laughing: The code was made for and run in [SWISH](https://swish.swi-prolog.org/) environment accessible on *(https://swish.swi-prolog.org/)*.
# Instructions
1. Open the [SWISH](https://swish.swi-prolog.org/) website, then click on the **"Create a Program"** button. This will open an **empty program** on the left hand side. 
2. Then, look for my code file called [prolog-simple-conifer-generator.pl](prolog-simple-conifer-generator.pl) and copy all of the code within it. Paste it into the left hand program window on the [SWISH](https://swish.swi-prolog.org/) website. 
3. To interact with the program, you'll use the right hand side **output window** *(on top)* and **console/terminal** *(at the bottom)*. The program is designed to run from the **main()** predicate. It only accepts a **list** as it's argument, and, in this case, only a **list of integers** for a successful output. 
4. To call the predicate **main()**, you simply need to write *```main([int1, int2, ... intn])```* with your desired integers in the console.
# Description
The program reads each of the *main()* predicate argument list integers and for each of them prints a part of the tree in the form of a pyramid that starts with 1 to 2 symbols at the peak *(depending if the integer is even or not)* and increases by 2 symbols each new line until reaching the specific argument list integer. Then it moves to the next integer until all the integers have been exhausted. It also prints filler symbols on each side of the *"tree"* to center it and make it look a bit nice.
