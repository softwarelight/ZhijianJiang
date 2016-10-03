---
layout: post
title: Internship Notes
subtitle: What I learned in internship...   
---
I spent three months in **SkyData**, a startup founded by **an Oracle Director** in Nanjing. During this process, I attend the development of **the first core product** and after reviewing my codes again and again, I obtain many useful skills. 

## Shell 
Since my job is mainly about shell programming, the focus of this article is about shell.   
* For the purpose of safety, put any variable between two **double quotes marks**, eg **"$HOME"**. About [WHY](http://unix.stackexchange.com/questions/68694/when-is-double-quoting-necessary)
* **& > /dev/null** means standard output and standard error to /dev/null
* The rank of different errors: **command_error**, **parameter_error**   
* There should be one space before and after **\|**   
* Use [**basename**](https://linux.die.net/man/1/basename) to strip directory and suffix from filenames and [**dirname**](https://linux.die.net/man/1/dirname) to strip non-directory suffix from file name   
* Use [**mktemp**](https://linux.die.net/man/1/mktemp) create a temporary file or directory. For example, you could create a temp dir to do what you want to do in it   
* Use [**trap**](https://linux.die.net/Bash-Beginners-Guide/sect_12_02.html) to **trap EXIT signal to delete temp files** before exit   
* **grep -q** to prevent printing   
* If you want to create a file or directory, **check** whether it has existed or not at first
* Put command into `$()`
* `($())` could generate an **array**   
* Use [**cut**](https://linux.die.net/man/1/cut) to  remove sections from each line of files   
* Use **local** to claim a variable only used in a function     
* For the convenience, put the annotation before the code
* Try to increase automation of a shell script
* [`getopt`](https://linux.die.net/man/1/getopt) to parse a command
* The use of `[[ XXXX ]]`
  * Put expression: [[ i = 3 ]] 
  * **Note**: there must be one space before and after XXXX
* How to say about the usage of a command, eg: `setup.sh [-o output_path] <-v version_num>
  * [-o output_path]` means this option is optional
  * <-v version_num> means this option is necessary
* Try not to use `cd` in a shell script
* `diff -Naur A B` to generate the patch from A to B


## About README.md
* Use [**tree**](https://linux.die.net/man/1/tree) to list contents of directories in a tree-like format

## Useful Command
* `grep -r "XXXX" DIR` to search XXXX in all files in DIR
* `conda create` to create new conda environment
* [`ltrace`](https://linux.die.net/man/1/ltrace), [`strace`](https://linux.die.net/man/1/strace), [`ldd`](https://linux.die.net/man/1/ldd) to trace a program
* [`tmux`](http://man7.org/linux/man-pages/man1/tmux.1.html) is a terminal multiplexer
* `cat XXXX | [tail](https://linux.die.net/man/1/tail) -n +num1 | [head](https://linux.die.net/man/1/head) -n num2` to output several lines of a file
* [`git log`](https://git-scm.com/docs/git-log) to view the commit history
* [`date`](https://linux.die.net/man/1/date) to get the date 

## About [MKL](https://software.intel.com/en-us/articles/intel-math-kernel-library-documentation)
* Lapack: linear algebra package, blas: basic linear algebra library

## About regular expression


## Special Thanks
* To **Yilong Ren** for reviewing my codes again and again and teaching me about many things.   
* To **Fei Cai** for offering this opportunity and guiding my work in the beginning.   
* To **Yunpeng Li**, my CEO, for leadership of free style and a recommendation letter.   
* To **SkyData** for everything you provide.
