### Title

The Phlow - A pragmatic automated workflow using GitHub

---

### Abstract

The Phlow
__Pronunciation: /floʊ/  ...as in *"flow"*__

There are many recommended work processes out there, that are specifically designed to be git centric. So one could ask: _"why do we need another?"_. Well the obvious answer is of course that _"The ones that exists aren't good enough"_.

Over the past years, we have developed a process with a simple _release-train_ branching strategy (`master` being the only long-lived branch) which is fully supported by a pipeline - free of choice - and that is including the automated integration of the developer's work.

We have taken a handful of useful workable pieces, that are already out there, most importantly the GitHub API  and tied them together in an impressively simple and efficient way. The entry point to this is the new publicly available `git-phlow` extension.

We will explain the process, and demonstrate it using only the `git-phlow` extension and pipeline.

### Details
_For review committee only_

#### Outline
I'm thinking in the lines of:

* __The context__ - A brief intro to why commonly used flows like Nvie's _git flow_ and GitHub/GitLab/Bitbucket _pull requests_ centric approaches aren't suitable for company internal work flows - and why we had to come up with another.
* __The histroy__ - Adding some ethos to the concept through a brief mention of the companies that has been involved in the project so far: Novo Nordisk, Atmel, Grundfos, Volvo...
* __A short demo__ - In our own organization, we have even our non-tech employees like marketing workers and event managers working The Phlow when they update our Jekyll/GH Pages web site. WE will demo a few updates using The Phlow and show how it's all processed by the pipeline. The point being that the process is so simple that even non-techies will fall in love with GitHub.
* __The concepts__ - Introducing the moving parts and concepts; Adding a handful of predefined labels to GitHub issues, which will enable us to run a disciplined KanBan board, visualized in waffle.io and then utilizing git, GitHub and GitHub Issues accessed through the GitHub API all nicely wrapped up in the git-phlow extension.
* __The takeaway__ - The most important take-away is _"This is available - go home and use it!"_ It literally requires only three things: 1) A GitHub account 2) Install The Phlow extension, 3) Configure it (there's an initialize command that does it).

#### About me
I have been working with version control systems since the age of dawn - my first presentation on branching strategies (in ClearCase) was in Denver at Rational User Conference 2001. I'm an experienced speaker, with 5-10 public appearances per year. I'm also an experienced trainer and workshop facilitator.

I'm Partner and Co-founder of Praqma - The Continuous Delivery company.

Praqma is about helping companies who develop software, to organize themselves in a way that allows quality to be built in - as opposed to glued on.

In short - we're tool experts - Including Git and GitHub experts.

#### Can I bring a Friend
If it fits your format, then I'd like to bring a co-presenter: The effort of developing and releasing the new git-phlow extension in GO falls on a young developer (Simon) who's been working with this intensely for 3 months - without invoicing a single hour, and open sourcing everything. I would like to extend him the courtesy of coming on stage and run the demos himself. He's inexperienced as a speaker, but very extrovert and well spoken. He would be proud to do this.

#### The audience: Both pigs AND chickens!

![image](https://cloud.githubusercontent.com/assets/155492/23331843/5d55b194-fb6e-11e6-8754-f08c4bd8313c.png)

The audience for this session is quite broad - Although the intended end-users are developers, the presentation itself is not very technical. Often (too often) the choice of tools stack and process falls on managers and chickens, They too need to know that optimizing the workday of an arbitrary developer has a huge impact on business.

The contemporary buzz goes: _Infrastructure as code_, _test as code_, _deployment as code_ well _anything as code_ basically. In the light of this buzz, it seems ironic, that most software development processes today are still plastered with manual processes.

We have been working with our clients on optimizing git centric work processes for more than 5 years. Building _developer collaboration platforms_ rather than _SCM systems_. Embracing the Agile doctrine _"People over processes and tools"_. We strive for a process, that is so efficient, that it becomes invisible.

---

### Pitch
_For review committee only__

The Phlow is the manifest of all these learnings and customer collaborations. It has evolved from a Jenkins Plugin and a handful of git aliases, to an ambitious GO implementation of an open source git extension. That supports - not only Jenkins - but literally _any_ CI server (in our demo we're using Concourse CI).

Today The Phlow is available through the de facto standard package mangers HomeBrew and Apt.

---

### Bio

Lars Kruse has been working with version control systems and tool support of efficient software development processes since the age of dawn. Believes that Open Source is literally good (as opposed to evil!)

Partner and Co-founder of Praqma - The Continuous Delivery company; helping companies who develop software, to organize themselves in a way that allows quality to be built in - as opposed to glued on.

An evangelist of the DORITH principle (DO the RIght Thing).

---

### Ethnicity

Atheist, caucasian complexion (...and slightly annoyed by this questions, as I don't believe that high diversity in ethnicity is as important as high quality in presentations).
