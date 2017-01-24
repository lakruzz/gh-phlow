## Findings

Git lfs uses exec.Command from `os/exec` and wraps the entire set of git commands in it's 
own custom toolset. Instead of building a custom wrapper similar to git-lfs', we will use the GO port from git
[git2go](https://github.com/libgit2/git2go)




## Documentation
For argument parsing and --help documentation the [docopt](http://docopt.org/) library, will be a viable option over
[cobra](https://github.com/spf13/cobra)

###Docopt


###Cobra






