---
layout: post
title: Internship Notes
subtitle: What I learned in internship...   
---
I spent three months in **SkyData**, a startup founded by **an Oracle Director** in Nanjing. During this process, I attend the development of **the first core product** and after reviewing my codes again and again, I obtain many useful skills.    
Share with you, my friends. Wish some help!

## Shell Programming
Since my job is mainly about shell programming, the focus of this article is about shell.   

### Syntax
* For the purpose of **safety**, put any variable between two **double quotes marks**, eg **"$HOME"**. About [WHY](http://unix.stackexchange.com/questions/68694/when-is-double-quoting-necessary)
* **& > /dev/null** means standard output and standard error to /dev/null
* There should be one space before and after **\|**  
* The rank of different error functions: **command_error**, **parameter_error**   
* Put command into `$()`
* `($())` could generate an **array**   
* For the convenience, put the annotation **before the code**
* The usage of `[[ XXXX ]]`
  * Put expression: [[ i = 3 ]] 
  * **Note**: there must be **one space** before and after XXXX
* **$LINENO** to get the line number of a file
* [**BASH_SOURCE**](https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html)
* If you want to compare two variables, use **=** instead of **==**
* Use keyword **local** to claim a variable only used in a function     

### Command
* Use [**basename**](https://linux.die.net/man/1/basename) to strip directory and suffix from filenames and [**dirname**](https://linux.die.net/man/1/dirname) to strip non-directory suffix from file name   
* Use [**mktemp**](https://linux.die.net/man/1/mktemp) create a temporary file or directory. For example, you could create a temp dir to do what you want to do in it   
* Use [**trap**](https://linux.die.net/Bash-Beginners-Guide/sect_12_02.html) to **trap EXIT signal to delete temp files** before exit   
* `grep -q` to prevent printing   
* Use [**cut**](https://linux.die.net/man/1/cut) to  remove sections from each line of files   
* [**getopt**](https://linux.die.net/man/1/getopt) to parse a command
* Try not to use `cd` in a shell script
* `set -e -o pipefail`

### Thoughts
* If you want to create a file or directory, **check** whether it has existed or not at first
* Try to increase **automation** of a shell script
* How to say about the usage of a command, eg: `setup.sh [-o output_path] <-v version_num>`
  * `[-o output_path]` means this option is optional
  * `<-v version_num>` means this option is necessary
* Create a special function to check options

## Useful Command
* `grep -r "XXXX" DIR` to search XXXX in all files in DIR
* `conda create` to create new conda environment
* [**ltrace**](https://linux.die.net/man/1/ltrace), [**strace**](https://linux.die.net/man/1/strace), [**ldd**](https://linux.die.net/man/1/ldd) to trace a program
* [**tmux**](http://man7.org/linux/man-pages/man1/tmux.1.html) is a terminal multiplexer
* `cat XXXX | [tail](https://linux.die.net/man/1/tail) -n +num1 | [head](https://linux.die.net/man/1/head) -n num2` to output several lines of a file
* `diff -Naur A B` to generate the patch from A to B
* [`git log`](https://git-scm.com/docs/git-log) to view the commit history
* [**date**](https://linux.die.net/man/1/date) to get the date 

## About README.md
* Use [**tree**](https://linux.die.net/man/1/tree) to list contents of directories in a tree-like format
* [My structure](https://github.com/ZhijianJiang/ZhijianJiang.github.io/blob/master/README.md)

## About [MKL](https://software.intel.com/en-us/articles/intel-math-kernel-library-documentation)
* Lapack: linear algebra package, blas: basic linear algebra library

## About regular expression
TODO

## Conclusion
Instead of coding at school, commercial work more emphasize on
* Safety
    * Forbid dangerous actions when coding rather than teaching users in documentation
* Readability
    * Add newlines and annotation when necessary
* Documentation
    * Though it is difficult and a little boring to write docs, you must do it well!

## Special Thanks
* To **Yilong Ren** for reviewing my codes again and again and teaching me about many things.   
* To **Fei Cai** for offering this opportunity and guiding my work in the beginning.   
* To **Yunpeng Li**, my CEO, for leadership of free style and a recommendation letter.   
* To **SkyData** for everything you provide.
