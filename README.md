Sass-Struct
-----------

## Why?

While searching the web for best-practices regarding Sass project structures, I stumbled upon one which I really liked. Now, none of us want to sit and create the same file structure again and again everytime we pick up a new front-end project, right? Automation to the rescue! This is why I wrote this script. 

You can read more about the Sass folder structure I refer to here: http://www.sitepoint.com/architecture-sass-project/
 
## Bonus
The script also asks the users if they want to install **Bourbon**[1] and **Neat**[2] along with the whole structure generation. This will obviously only work if you have the respective gems installed.

[1] https://github.com/thoughtbot/bourbon
<br>
[2] https://github.com/thoughtbot/neat

## Usage

+ Clone the repo onto your computer.
+ Copy the 'sass.sh' file to a location where you you want to the sass structure generated (for instance, the assets folder)
+ **cd** into the location where you placed the script and run:

```Bash

./sass.sh

```
+ A 'sass' directory will be created for you with the folder structure and imports. Sass-away!

