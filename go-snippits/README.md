#Phlow Research

**Sections**


- Documentaion
- Man page
- Technologies


### Documentation
For argument parsing and --help documentation the [docopt](http://docopt.org/) library, will be a viable option over
[cobra](https://github.com/spf13/cobra)


####Cobra
Cobra is a tool for handling command inputs and flags, and it is used widely by popular tools

Cobra is used by
- kubernetes
- git lfs
- etcd
- rkt

####Docopt



###Man page
Man pages are pages written in a special syntax called `groff` which `man`parses for a beautiful user view. 
It's seems there are no easy way of generating a manual, so it will have to be manually maintained during developement. 
Luckely there is a tool called `ronn` which actually provides a way of converting markdown to the manpage format, so
we can have the manual in markdown, html exports are also supported. 

[about man pages](https://blog.terminal.com/tutorial-how-to-write-man-pages/)

[Easy man page creation with Ronn](https://spin.atomicobject.com/2015/05/06/man-pages-in-markdown-ronn/)

[Github hosted manpage with ronn](http://rtomayko.github.io/ronn/ronn-format.7.html)

[template](https://github.com/rtomayko/ronn/tree/master/lib/ronn/template)


####Install and getting started
```ruby
#installation
    $ gem install ronn
    $ ronn --help

#using ronn
	$ ronn [file].1.ronn

#produces files
	file.1.  #man page
	file.1.html
```




###Technologies

####libgit2/git2go 
libgit2 is the portable implementation of git, which comes in many flavours. It is fully featured, or as good as, and
has a seperate port for go, which is git2go.  

git2go can be statically and dynamically linked, so we can package the library with our binary. Having a versionized
library is great, that gives us control over dependencies and removes the need for go' exec.Command calls and a need for 
having git installed.   

Git lfs uses exec.Command from `os/exec` and wraps the entire set of git commands in it's 
own custom toolset. Instead of building a custom wrapper similar to git-lfs', we will use the GO port from git
[git2go](https://github.com/libgit2/git2go)

Resources for getting started with git2go, and usage of the librarys
[get started](http://www.petethompson.net/blog/golang/2015/10/04/getting-going-with-git2go/)
[git checkout reference](http://stackoverflow.com/questions/31496175/git2go-simulate-git-checkout-and-an-immediate-git-push)






