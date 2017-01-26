package cmd

import (
	"fmt"
	"os"
	"strconv"

	"github.com/spf13/cobra"
)

// work-onCmd represents the work-on command
var workOnCmd = &cobra.Command{
	Use:   "work-on [int task]",
	Short: "A brief description of your command",
	Long:  ``,
	Run: func(cmd *cobra.Command, args []string) {

		//required argument
		if len(args) != 0 {

			f, e := strconv.ParseInt(args[0], 0, 64)

			if e != nil {
				os.Exit(1)
			}

			fmt.Fprintln(os.Stdout, f)
		} else {
			fmt.Fprintln(os.Stderr, "must have one argument")
		}

	},
}

func init() {
	RootCmd.AddCommand(workOnCmd)

	// Here you will define your flags and configuration settings.

	// Cobra supports Persistent Flags which will work for this command
	// and all subcommands, e.g.:
	// work-onCmd.PersistentFlags().String("foo", "", "A help for foo")

	// Cobra supports local flags which will only run when this command
	// is called directly, e.g.:
	// work-onCmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")

}
