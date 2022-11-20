# The Phlow

## - A pragmatic automated workflow using GitHub and GitHub issues


### Abstract

`Phlow
__Pronunciation: /floʊ/  ...exactly as in *"flow"*__

There are many recommended work processes out there, that are specifically designed to be git centric. _Git flows_ — So one could ask: _"why do we need another?"_. Well the justification for this particular one is that _"It's elegant and simple"_.

As opposed to most flows which are _pull request centric_ — that is; all changes to repository happens in context of pull requests and peer-reviews. This one is instead _issue centric_.  We still get a place where we can discuss and collaborate around - well; issues. But we don't get the tedious stop-go process that pull requests enforces.

Where _pull request centric flows_ are control flows – this one is about _collaboration_.

### A git extension
This flow is delivered to you as a _git extension_ when you install it you have simply extended your local git with five new commands:

```shell
git workon <issue number>
git wrapup
git deliver
git share
git sync <issue number>
```

That's it - and it's all you need.

Both as a git newbie and an old-timer professional you can use these five new  commands to open up a world into git, GitHub, GitHub issues and GitHub projects that makes collaboration among software developers - simple and delicious.

### Documentation

Documentation is built in. From you terminal just run `git phlow` and head on from there.

#### The users: Both pigs AND chickens!

![image](https://cloud.githubusercontent.com/assets/155492/23331843/5d55b194-fb6e-11e6-8754-f08c4bd8313c.png)

Although the intended end-users of this phlow are developers, the argument for using it is not very technical. Often (too often) the choice of tools stack and process falls on managers and chickens, They too need to know that optimizing the workday of an arbitrary developer has a huge impact on business.


The branching strategy underneath is a simple _release-train_ branching strategy (`master` being the only long-lived branch). It is fully supported by a declarative pipeline - free of choice - and that is including the test, deploy and release process.

This is _Git Ops_; you just work in git, and then the entire World happens!

The process is so simple that even non-techies will fall in love with GitHub.
The phlow is also used by non-tech employees like marketing workers and event managers working The Phlow when they update our JAM stack website.


The contemporary buzz goes: _Infrastructure as code_, _test as code_, _deployment as code_ well _anything as code_ basically. In the light of this buzz, it seems ironic, that most software development processes today are still plastered with manual processes.

_Pull request centric_ flows included.

In Praqma we worked with our clients on optimizing issue centric work processes. Over the course of more than 5 years we built _developer collaboration platforms_ rather than _SCM systems_. Embracing the Agile doctrine _"People over processes and tools"_. The Phlow strive for a process, that is so efficient, that it becomes invisible.

The Phlow is the manifest of all these learnings and customer collaborations.

#### About the maintainer
I have been working with version control systems since the age of dawn - my first presentation on branching strategies (in ClearCase) was in Denver at Rational User Conference 2001.

Since then I've made _version control_ in general my thing, and when git buried all competition in the field I specifically made _git_ my thing.

I co-founded Praqma - The Continuous Delivery company. It's gone now, acquired by another company. But in Praqma is specialized in helping companies who develop software, to organize themselves in a way that allows quality to be built in - as opposed to glued on.

Companies like Volvo, Grundfos, Kamstrup, Novo Nordisk, Atmel (now Microchip) and many other were actively participating in using, tearing and wearing this particular phlow into it's current level of simplicity and elegance.
