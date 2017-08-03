#Bash

Shell scripts will be our bread and butter.



###Customized Command Line
See `_dev/.bash_profile.sample`.

###Basic Commands

```
#show files in your current directory
ls
ls -a #shows hidden files

#navigate to another directory
cd .. #up one directory
cd tango #enter the /tango directory (if present)
cd ~ #return to your home directory (user-specific)
#TIP: use tab to autocomplete available directory names
#TIP: customize your command prompt to make it easier to understand

#symbol for your home directory
~

#output text to stdout (standard out, which can be printed to screen or used by other programs)
echo "This will get printed or passed to another program."
NAME="Jag"
echo "$NAME is cool."

#create file
touch your-file.js

#delete a file
rm your-file.js

#delete a directory (be careful!)
rm -rf your-directory

#move a file/directory TODO
mv source dest

#copy a file/directory TODO

#append to file
echo "something to append" >> your-file.js

#overwrite/create file
echo "something to write" > your-file.js

#piping TODO | ||

#grep TODO

#read a file TODO < <<

#time TODO

#cat TODO

#sed TODO

#cut TODO

#find TODO
```
sudo find / -name 'raspi-config'
```

#run multiple programs TODO & &&


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

