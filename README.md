# autodj

Co-written with Mike Goll

This setup assumes the following. Feel free to go through the scripts and change things as need be. No doubt your setup will need tweaking.

Some things you will NEED to change.

1) 192.168.20.2 to your icecast server's IP

2) Port 8000/8005 to your ports. They cannot be the same.

=======SETTING UP=============

I will not explain how to install these programs. Compile them on your own.

1) Icecast set up on local machine, running on port 8005. Config directory will need to be changed, no doubt. 

2) Oddcastv3 (or darkice which you'll have to configure yourself with mp3 support), Jackd and Mplayer installed. You can get oddcastv3 from:
http://www.oddsock.org/tools/oddcastv3_jack/

We use version 3.0.3 if 3.1.6 doesn't compile.

3) A seperate computer, running *any* audio streaming program (We currently have a Mac OSX machine running NiceCast (not a free program). Computer MUST be able to ssh to machine. For Windows, I recomment Putty. 

4) Configure your ssh client to:
	a) Reverse tunnel port 8000 to the initial icecast server
	b) Execute the 'dj' script (probably want to have your client do this for you, especially if you have other people wanting to use this)
	c) Wait for the current "auto" song to finish, and the disclaimer to play. You're live! We choose to take an exisiting radio station setup, and pass the mixer board through the Mac (and back out to the board) streaming all audio. This allowed the 8-second delay "box" to affect the internet stream, as well as our swear-filter and phone box.

This setup is easily able to handle 24/7 "auto" playing, DJ-on-demand recording and broadcasting, and virtually an unlimited amount of equipment passed through the internet stream and radio broadcast.

