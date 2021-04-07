---
layout: post
title:  "Decision Paralysis"
date:   2021-04-06 22:31:13 +0000
categories: psychology thoughts reflections
---

# Background

Below I explore case studies in an effort to look back, and figure out why even such simple decisions have lately (past several years) been so difficult, and stress incurring. The idea being that self-reflection would provide a starting point to branch off deeper reflections, explorations, and research in this area outside of my own experiences.

# Case Study 1 - Launching a blog

The "simple" act of starting to build your own blog. 

A goal which, given technology today, should be manageable and achievable for anyone. 

Right?

For many people, that may be the case, but let's use this as an example to explore how even something so easily accessible could be insurmountably difficult.

I consider having launched this blog, and managed to write something in it to be a huge achievement. Not because of any technical complexity to starting a blog, not even because of some level of writers block (definitely have plenty to write about). The reason I havd trouble getting this blog launched had more to do with what I am referring to as "Decision Paralysis".

For the past several years (checking back in GitHub history, it seems since about 2016), I have attempted several times to launch my own blog and continuously work on it. Sometimes I would manage to get as far as getting a website up, but would get stuck on one thing or another (a decision), which would drive me to the point of moving onto just continuing to do work for others (where it is their responsibility to determine scope, and my responsibility only to help guide them, and help them to achive their goals).

It has fascinated me over the years how I can spend sometimes 60+ hours/week working for others, and actually getting stuff done. But, I try to do something for myself (even very simple tasks like this), and I get overwhelmed.

What sort of problems could be so complicated in launching a blog?

Well, I think of it like a tree of decisions that branch out. To explain this, let's explore a stream of consciousness flow (putting myself back in my own shoes when launching a blog).

-----

First, I come up with the grand idea that I'd like to start a blog. I go and try and find out which blogging platform I should use.

Should I use WordPress, Hugo, Jekyll, Ghost, etc, etc, etc.

Let's move on, assuming I land on a decision before getting caught up in some other rabbit trail which leads me not to getting the original project done (but rather starting some completely unrelated project)

Cool, I decided on Jekyll. Let's set that up.

Hmmmmm... well, I don't want to muddy up my host system with Ruby, Bundler, and Jekyll (global gem). 

Seems like I need some sort of isolated system. Great, that's not difficult... hmm, do I spin up a docker container right off the bat? A VM? A Linode? A droplet? An EC2 instance? A GCP instance? etc?

Let's go with linode.

Great! **provisions Ubuntu 20.04 LTS VM**

```
useradd josh
usermod -aG sudo josh
mkdir /home/josh
chown -R josh:josh /home/josh
chsh -s $(which bash)

# Login as my user

sudo apt -y update
sudo apt -y install ruby g++ gcc
```

That wasn't too bad, awesome. Continuing w/ Jekyll quickstart

```
gem install bundler
jekyll new blog
cd blog
git init
git remote add origin git@github.com:thatnerdjosh/thatnerdjosh.git
vim _config.yml
```

Easy enough... oh wait... it's asking me a site title, site URL and description (need to make sure SSL will work, SEO tags, etc). *20 minutes later* Great, I got that all ready :)

Let's push...

```
git push -u origin master
```

It's online *phew*.


Well, now I have a blog... I got to write a blog post.

Right... well, what markdown editor do I use... Looking on Google renders a ton of options.

I choose just to use a basic text editor for now, and then managed to write the current post you are reading.

---

Described above is the "happy path" of actually successfully getting a blog up and writing the first post. However, there are several "decision" points along the way, and any of those very simple tasks would hold me up every single time I attempted to get a blog online in the past.
