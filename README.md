# Our Default Github Issues Workflow

This repository is a template for our default Github issues workflow in Praqma.
We use the workflow for our Github repositories that uses Githubs issues.

![image](https://cloud.githubusercontent.com/assets/155492/12613259/c842ef10-c4f8-11e5-958a-02720f07cbb5.png)

It is simple, it is easy to use and it uses some simple conventions and are only structures around labels and optionally a Kanban board on top from [waffle.io](https://waffle.io).


##The Waffle Flow
Get inspiration to a waffle suported workflow in [this Gist](https://gist.github.com/lakruzz/77786b48f5dc0b3ef063).

## GitHub Label Manager
Have a look at [Destan Sarpkaya's](https://github.com/destan) [GitHub Label Manager](http://www.dorukdestan.com/github-label-manager/), it's what we currently use to sync labels between repo's.

## The GitHub Issue CLI - ghi
you can also instal the [ghi](https://github.com/stephencelis/ghi) CLI interface and then simply run

    ghi label -l | sed "s/\'/\\\'/g" | xargs -I %lb sh -c 'ghi label -D "%lb"'

to delete all existing labels and then to create all the default labels run:

    ghi label "Action - awaiting feed-back" -c 6EB82C
    ghi label "Action - needs grooming"     -c 009800
    ghi label "Prio 1 - must have"          -c E83D0F
    ghi label "Prio 2 - should have"        -c EB6420
    ghi label "Prio 3 - could have"         -c E8850F
    ghi label "Prio 4 - won't have"         -c E8A80F
    ghi label "Size 0 - Briefing"           -c C7DEF8
    ghi label "Size 1 - small"              -c 20B4E5
    ghi label "Size 2 - medium"             -c 208FE5
    ghi label "Size 3 - large"              -c 0052CC
    ghi label "Size 4 - too big"            -c 100B6B
    ghi label "Status - duplicate"          -c 111111
    ghi label "Status - workable"           -c EDEDED
    ghi label "Status - in progress"        -c EDEDED
    ghi label "Status - up Next"            -c EEEEEE

We've added a script [default-ghi-labels](https://github.com/Praqma/OurDefaultGithubIssuesWorkflow/blob/master/default-ghi-labels) you can use for the purpose.

# Changes

Changelog for different versions of this template repository. We can't tag releases, as meta data like labels are not affected by tags, so we just keep a manual change log below.

## Version 1.0

Initial version, developed or the last few month from our experiences.
