# The Phlow
### An example of a scripted solution

__back in the old days, _when sys admins ruled the world_ and I was a sys admin. I wrote a ton of scripts and reusable libraries to support my work. Our general approach to all problems was; _let's-make-it-go-away-by-a-small-script_. But we didn't just hack shell scripts. Shell scripts were considered unsophisticated and simple. They lack a lot of desirable features that you would normally get from a real programming language; debugging, extension by libraries, classes etc. But maybe most importantly they don't support built-in documentation which was really important to us.__

Back then we wrote all our automation in perl - and for that reason (...alone) I'm generally considered old today - by my peers.

But despite the obvious reason, that perl was cross OS compliant, and we worked on both Windows and Linux there were really good support in perl, for anything we wanted to do. So we used it as a hammer, and all problems were just nails.

I'll try to give you some insight into what we wanted to achieve and how perl helped us - and then I'll demonstrate my points - in a small perl script. I encourage you, please don't pay too much attention to the fact that I'm using perl - I bet you can do something similar in Python, Ruby, Gradle, JavaScript.

It's the principles that I'd like to discuss.

# Principles

## Get your arguments straight

__Design the arguments and switches that your script should support, before you actually start coding__

We used getopt for this. Getopt is perl library that supports C-style argument parsing. It allows you to design the _interface_ (what) before your actual implementation (how). It forces you to think about the semantical meaning of what your doing. Which tends to lead to a better design.

So we would start _any_ program by defining the legal arguments to the program. The we would parse them syntactically (call `getopt` using the definition) and next we would the semantically (check for illegal combination of arguments and switches etc.).

We would expose meaningful and helpful error messages if the interface was used incorrectly.

## Die gracefully
__Always assert the everything is in perfect order - die gracefully if it isn't__

I have to admit, that we didn't write a lot of unit tests for our scripts. They were meant for us to be efficient every-day-tools and the overhead of writing unit tests were often not worth the overhead. If a script grew on us, and became generally useful, we would often refactor it into a module, and _then_ we would (maybe) write tests for it.

BUT - to compensate for the lack of tests, we had a very strict discipline when writing the scripts. All the assertions that you would normally put in your unit tests were added to not all statements but almost.

Perl has brilliant support for this; _Anything_ in perl will be type casted into what ever is expected in the context. So if you put anything in the context of a boolean expression, anything will be type casted into a boolean. In perl `nil` (0) and `null` (NULL) is false - anything else is true.

So combining conditionals with statement like these were common:

```
open( CONFIG, "< $path" ) or die "Couldn't open $path for reading: $!\n";
die unless $ineedthis = givemewhatineed();
```

We even added a generic `die_gracefully` method that would just dump the stack trace and expose all the user friendly information the we could retrived from the context of the program. so that we could die gracefully with no overhead at all - like:

```
$ineedthis = givemewhatineed() || die_gracefully();
```

## Keep the main program elegant

Following up on the approach that we would parse validate the interface before starting to execute anything, we would often try to make the main execution of the program easy to read - like prose sometimes.

The idea was, that it should be easy to see what a program did - simply by reading the main loop.

To support this we would often make individual procedures for each individual meaningful utilization of input parameters.

Not as an unbendable doctrine, but as a useful set of every-day-principles we would say

* Main loop consist only of function calls.
* Functions are short (< 50 statements)
* Create more functions!
* Take anything that is reusable - and relocate and refactor it into a module
* Treat modules like classes

The last one is kinda tricky in perl, because some might argue that there are not support for classes in perl, and it's true in the traditional classical meaning of the concept of classes. But there is another beautiful concept that you can take any array and simply `bless` it and it will _behave like_ a class, in the meaning that it becomes it's own self-contained name space and you can use classic _dot-notation_ to reach anything in that scope. You'll have to mimic public/private methods by a combination of naming conventions and by the package _exporter_. So "yes" is't not object oriented - out of the box. But if you, as a programmer, want it to be - then it is.

## Put your documentation right there in you code

Today we use MarkDown heavily and I love it - but perl has native support for  `POD` Plain Ole Documentation. So adding POD formatted comments in in the scripts allowed us to generate html man-page style documentations as easy as running `pod2html`, or we would use `Pod::Man` the generate man-pages right there in the terminal.

So essentially any average script would behave like any 1st class unix shell command.

## Never get lost - always leave a trail

It's not that we were testing in production - only - but it's just an experience we had, that when things go wrong, they go wrong in production. And when you need to reproduce the error to fix it - prodcution is usually not the best place to reproduce it.

So we added support for tracing - almost everything. Tracing was default built in, but default not turned on. It would often be as easy to turn on as defining an environment variable.

So when something failed - we would normally just enable the trace, and wait for it to fail once more. and we would have a big fat trace log to scrutinize.

Any small script were capable of doing this.

## Put anything reusable in modules

We had a standard approach to differ between _quick-and-dirty_ and _gold-plated_; start out in the context where you need it - when you discover that something is generically useful. Take it to a module, treat it as a class, document it.

And release it independently from other modules.

Perl has brilliant built in support for this approach to code maturity.

## Make the execution self-contained

So producing reusable modules became _a thing_. Not that we went completely over board with it, but we did produce quite a lot of modules, also because modules are essentially how you mimic classes in perl - we ended up with _some_.

So to enable a simple support for creating many new modules, we added a few tweaks that would enable perl to load modules from the a relative location of the script itself - it meant that our runtime environments needed no configuration at all. The goal was than anything should be able to run anywhere, without any prerequisites defined, other then the perl interpreter being present.

# Hack hack hack

I'd like to beat the drum for some of these old, old-school coding virtues. I haven't done much Python programming, but some - enough to know that Python too has built in support for a lot of these coding virtues as well.

Hidden gems in the languages that I will argue are lost, when people (pit)fall into hacking shell scripts - or even worse: Windows batch scripts (Yarks!)
