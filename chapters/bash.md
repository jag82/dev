#Bash

Shell scripts will be our bread and butter.



###Customized Command Line
See `_dev/.bash_profile.sample`.

###Basic Commands

`stdout`
`stdin`

####show files in your current directory
```
ls
ls -a #shows hidden files
```

####navigate to another directory
```
cd .. #up one directory
cd tango #enter the /tango directory (if present)
cd ~ #return to your home directory (user-specific)
#TIP: use tab to autocomplete available directory names
#TIP: customize your command prompt to make it easier to understand
```

####symbol for your home directory
```
~
```

####printf (echo without the newline)

####output text to stdout (standard out, which can be printed to screen or used by other programs)
```
echo "This will get printed or passed to another program."
NAME="Jag"
echo "$NAME is cool."
```

####output text to stdout and take arguments from stdin
echo 'abc' | cat
cat README.md


####create file
```
touch your-file.js
```

####delete a file
```
rm your-file.js
```

####delete a directory (be careful!)
```
rm -rf your-directory
```

####move a file/directory TODO
```
mv source dest
```

####copy a file/directory TODO

####append to file
echo "something to append" >> your-file.js

####overwrite/create file
echo "something to write" > your-file.js


####single quotes = literal, double quotes= expanded
https://askubuntu.com/questions/76808/how-do-i-use-variables-in-a-sed-command

####piping TODO | ||

####grep TODO

####read a file TODO < <<

####time TODO (check how long a program runs)

####read TODO (prompt for user input)

####sed TODO

####cut TODO

####find TODO
https://www.cyberciti.biz/faq/find-command-exclude-ignore-files/

```
sudo find / -name 'raspi-config'

find /path/to/files -type f -exec sed -i 's/oldstring/new string/g' {} \;
```

####curl TODO

####run multiple programs TODO & &&

####ifconfig

####reboot

####sudo

####expr (regexes)


####functions (also ####args)
```
function testfn(){ 
	echo this is a test function
	echo $# #number of args
	echo $1	#first arg
	echo $2	#second arg
	echo $@	#all args
	echo $? #exit code of last function
}

####if statements
```
if [ $1 -gt 100 ]
then
echo Hey that\'s a large number.
pwd
fi
```

```
####imports
```
source ./utils.sh

testfn alpha beta
```


###PATH variables

In order to call a program from bash, it needs to be declared in the PATH variable. To do so, open `~/.bash_profile` and add:

```
    export PATH="$PATH:/usr/local/sbin/"
```

If there's another line that starts with `PATH=`, make sure the above line comes **after** it. In the above example, we are saying:

- `export`: make this globally available
- `PATH=`: we define a variable named PATH (called by typing `$PATH`)
- `$PATH:/usr/local/sbin`: whatever path already is + a path to some other binaries we want to add



## Advanced Packaging Tool (APT)

The advanced packaging tool (APT) is the best way to install software for Linux machines. We interact with this tool via the command line version of the program `apt`. You may come across others' work that uses the similar program `apt-get`. We prefer the former. [Why?](https://itsfoss.com/apt-vs-apt-get-difference/)

[Here's the list of apt commands.](https://manpages.debian.org/jessie/apt/apt.8.en.html)


## Other

FYI, http://www.etalabs.net/sh_tricks.html is a nifty collection of the cruft necessary to fight the oddities and incompatibilities of bourne shells, sh.


