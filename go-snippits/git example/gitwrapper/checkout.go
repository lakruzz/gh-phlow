package gitwrapper

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/libgit2/git2go"
)

//Repo containig pointer to current repository
type Repo struct {
	repo git.Repository
}

func getCurrentDirectory() (string, error) {
	dir, err := filepath.Abs(filepath.Dir(os.Args[0]))
	if err != nil {
		return "", err
	}
	return dir, nil
}

func openRepo() *Repo {

	path, err := getCurrentDirectory()

	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	var repo, gitErr = git.OpenRepository(path)

	if gitErr != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}

	var currentRepository = Repo{repo: *repo}

	return &currentRepository
}

//Checkout checks out a branch 'git checkout - b name'
// code borrowed from http://stackoverflow.com/questions/31496175/git2go-simulate-git-checkout-and-an-immediate-git-push
func Checkout() {

	var name = "testbranch"
	var repo = &openRepo().repo

	head, err := repo.Head()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}

	headCommit, err := repo.LookupCommit(head.Target())
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}

	_, err = repo.CreateBranch(name, headCommit, false)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}

	_, err = repo.References.CreateSymbolic("HEAD", "refs/heads/"+name, true, "headOne")
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}

	opts := &git.CheckoutOpts{
		Strategy: git.CheckoutSafe | git.CheckoutRecreateMissing,
	}
	if err := repo.CheckoutHead(opts); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
