#Think about time

I learned about TimeBoxing, more specifically the Pomodoro technique (which I've used before successfully), and the idea of flow being a period of time when the whole self is creatively engaged and lit up by the task at hand (something I've experienced many times while learning something new, but did not realize there were whole studies devoted to this feeling!).  I also learned about little habits adding up to big results, and productivity suggestions for people who don't currently concentrate very well.

Time Boxing is choosing a chunk of time and spending that time working on a given project.  Once the time is up, no matter how much progress is made or whether the challenge is fully completed, one takes a step back to assess that progress, and to check in with others working on the project.  This sounds like a great way to put a no-pressure time limit on a given challenge and get a lot done without focusing too much on the solution.

Currently my time management skills are atrocious and very scattered.  This is primarily due to the nature of my job and my schedule being kind of all over the place.  I feel like it's hard for me to focus and I'm excited to use some of the tools I just learned about to retrain my ability to stay on track.  Because I don't have a current strategy, other than hauling myself to a coffee shop for a 6 hour stint and praying that I get enough done, I would say it's not working too great.

I'd like to start using the Pomodoro technique again.  I used this when I was first learning to code, and also when I had copywriting projects to work on, and I feel it worked quite well.  I remember getting so much done at that time and could even remember how it *felt* when my brain wanted to distract itself with a text message or email but I forced it to wait until the timer went off.  It felt satisfying and it worked.  I will employ this method by simply starting--I'm going to set a time for 25 minutes after I finish this assignment and jump right in!



My time management strategy for Phase 0 is to keep 3 days sacred for Phase 0 work and nothing else.  While this won't be perfect every week, my hope is to have 20 + hours per week where I don't expect myself to do anything but Phase 0.  Fortunately, I have the flexibility in my schedule to set things up like that and I have already alerted my partner and friends that I will not be available much.  During these dedicated hours, I'd like to go to a coffee shop to minimize distractions and use the Pomodoro technique to keep me on task.



Wish me luck and good luck to you!

#The command line

A shell, as far as I understand, is something like Terminal on a Mac--it is a text only interface that allows the user to navigate through their system, make and manipulate files, and even write some programs.  Bash is the "Bourne Again shell" which is the standard shell for Linux users.  I'm not quite sure what a "superset of the Bourne" shell means, except that it seems to be compatible with the Bourne Shell and includes some add-ons and plug-ins.


The most challenging part of this was wrapping my mind around the stack while working with pushd and popd.  I've never thought about it in terms of a stack of files and it took me a minute to understand what was happening.  I also struggles with the pipes lesson, and to be honest, I'm still not 100% I understand what's happening here but I signed up for 3 months of Coding Dojo and I'll be working in the Command Line dojo until I get it!



I did successfully use all the command but I can't say that I completely understood or could recall all of them.  However, I think repetition is key and I will continue to drill these commands.



I don't have a strong opinion about what the most important commands might be, because I haven't used the shell enough to say for sure.  However, it seems like making new files and directories, navigating between them, and deleting them are some things that I'll be using frequently.  It also seems likely that I'll read the contents with less and more fairly frequently as well.



pwd: print working directory (lists where you currently are in your file tree)

ls: list (prints all the files and folders inside the current directory)

mv: move

cd: change directory (this will move you up or down the file tree depending on what you indicate)

../ this will move you up the file tree

touch: this will make a new file in the current directory

mkdir: this will make a new folder in the current directory

less: this will display the contents of the current text file

rmdir: this will delete a folder (if it's empty!)

rm: this will remove a file from the current directory.

help: does basically what it says!  It provides help finding a command or understanding how to use something.


#Forking and cloning

Hello, new person!  Here is how you GitHub:



Create a New Repo:  Navigate to your GitHub profile and click the dropdown menu next to the "+" (right next to your profile pic on the upper right corner of the page).   Choose "New Repository".  You'll be prompted to name it, choose the licenses that you want, and whether you'd like to have it public or private.  Once your settings are set to your liking, hit "Create Repository".  Voila!



To fork a repo, navigate to the repo you want to fork and (shocker) click the "Fork" button over on the right sidebar.  This will give a choice of where you want to fork it, so choose where you want it to live, and you're ready to go!  Once you choose the location of the fork, GitHub will automatically bring you to the forked repo, so you'll be on your fork, not on the original repo you forked from.



To clone that baby, you've got to make sure you already have GitHub linked to your local machine.  As long as that's set up, you can navigate to the directory where you want the clone to live on your computer.  Then type "git clone [url of forked repo]".  You pick up the URL from the GitHub page of the forked repo--you'll find a little clipboard that says "HTTPS clone URL" and you can copy it from here and paste it directly into your command line.


Why fork a repository?  Well, if I want to make changes to a repository without affecting the original one, I'll need a fork!  This way, I have the original repository at my fingertips, but I can make edits that belong to me, without changing the repo I forked from.  In the example of being a student of DBC, I can fork the homework assignments for each week of Phase 0, make changes to the files by adding my answers, and then push them up to my forked copy of the week's homework.  Then, any of YOU can pull down my changes, check out my answers and give me feedback without the original DBC repo being altered.


I didn't have any struggles setting up git and GitHub because I already set them up last year.  I do remember having a few hiccups setting them up but unfortunately cannot recall what they were.  I'm using the Shortcut Foo git and GitHub dojos to help me memorize the commands associated with these programs and they're already helping me feel more confident.



# BONUS CHALLENGE MATERIAL:

## Web Concepts:

###Browser:

A browser is software that allows you to search the web, retrieve and look at information, as well as transmit information.  Firefox and Chrome are examples of web browsers.

###DNS:

A domain name server keeps record of the domain name associated with a given IP address (like a phone book keeps track of a name associated with a phone number.)  Basically, the DNS translates a website's address from human language, to machine language, and then back again to something we can read.

###Domain:

This is the human-friendly name of your website.  The .edu or .gov or .com is one part of the domain name, and what goes between the www. and the .com (or .edu or whatever) is your second-level domain.

###Internet:

The internet is a distributed network of computers and servers, connected by buried cables, phone lines, and satellite transimssions (cell phones).

###IP Address:

This is the way computers find each other--each computer using the Internet to transmit information has a string of numbers to identify it (sometimes a company or a house can have one IP address to identify all the machines used there but in most cases each machine has its own.)

###Web App:

A web application is a dynamic site that changes according to user-produced content (like Facebook or Twitter).

###Website:

A website is a static page on the web that provides information (like the homepage of the coffee shop I'm sitting in right now!)

### World Wide Web:

This is software that sits on top of the internet and allows us to interface with the internet in a user-friendly way.

###How the internet displays content:

Seems like I push new material up to my website, the content is updated on the server where my website is hosted, and so the next time I refresh the website, I can see the changes reflected before me.  I wish I could explain it more technically than that--these terms are swimming in my head right now but I know they'll solidify!

###Final reflections:

####New things learned:

I learned that the internet is a wire and that the web is a software application that sits on top of it.

####When I first saw my website I felt:

Total relief that it worked!

####Aha moments?

I'm not sure I'm there yet, but this is really interesting and helping to demystify the "magic" of the internet.


