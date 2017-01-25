## Findings
Git lfs uses exec.Command from `os/exec` and wraps the entire set of git commands in it's 
own custom toolset. Instead of building a custom wrapper similar to git-lfs', we will use the GO port from git
[git2go](https://github.com/libgit2/git2go)





## Documentation
For argument parsing and --help documentation the [docopt](http://docopt.org/) library, will be a viable option over
[cobra](https://github.com/spf13/cobra)



###up and running with lib2git
Resources for getting started with git2go, and usage of the librarys
[get started](http://www.petethompson.net/blog/golang/2015/10/04/getting-going-with-git2go/)
[git checkout reference](http://stackoverflow.com/questions/31496175/git2go-simulate-git-checkout-and-an-immediate-git-push)




