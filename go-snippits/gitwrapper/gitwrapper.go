package gitwrapper

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/libgit2/git2go"
)

//RunWithArgs some function
func RunWithArgs(v string) {
	fmt.Println("Darn world")

	var dir, err = filepath.Abs(filepath.Dir(os.Args[0]))

	if err != nil {
		fmt.Println("darn error in path")
		os.Exit(1)
	}

	repo, err := git.OpenRepository(dir)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}

	if repo.IsBare() {
		fmt.Println("yes it is bare")
	} else {

		fmt.Println("nope it is just a repo")
	}

}
