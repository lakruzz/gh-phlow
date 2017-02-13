---
maintainer: lakruzz
---

# Welcome to the Phlow

__Pronunciation: /floʊ/  ...as in *"flow"*__

This repository contains some of the building blocks used to setup the phlow.

* The git aliases
* The GitHub issue labels
* Ghi (a CLI that supports GitHub Issues)

But if you want to know more background have a look at the Stories:

- [A Praqmatic following](http://www.praqma.com/stories/a-pragmatic-workflow/)
- [Milestones and Office hours](http://www.praqma.com/stories/milestones-and-officehours/)
- [An Automated Git branching strategy](http://www.josra.org/blog/An-automated-git-branching-strategy.html)
- [Pretested Integation Plugin](http://www.josra.org/blog/Pretested+integration+plugin.html) (for Jenkins)

The phlow itself is simple to use. It's uses some simple conventions and are only structures around labels and optionally a Kanban board on top from [waffle.io](https://waffle.io).

## The GitHub Issue CLI - ghi
The aliases we're using utilizes the [ghi](https://github.com/stephencelis/ghi) CLI interface - so please make sure you have that installed.

We've added a script [phlow-labels](https://github.com/Praqma/the-phlow/blob/master/phlow-labels) you can use for the purpose.

## Roadmap

We're using this phlow heavily internally in Praqma, and we're improving it constantly. The idea is that we will develop this as a git extension, rather than a pile of aliases, and we will probably also build in the features that are currently utilized from Ghi, so it eventually becomes just one install.

## The git-phlow extension repository
the official git-phlow tool is located on this repository [git-phlow](https://github.com/Praqma/git-phlow)

## Contribute

Yes! Please!

Leave any kind of feed back in [issues](https://github.com/Praqma/the-phlow/issues) or leave any kind of snippets of updates as pull requests.
