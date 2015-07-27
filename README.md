vagrant tutorial
========================

A set of examples of how to use Vagrant.

getting started
_______________

You'll need a few things to get started.

1. You'll need to clone this repo.
1. You'll need a fairly recent version of [Virtualbox](https://www.virtualbox.org/wiki/Downloads). >=4.2.0
1. You'll need a fairly recent version of [Vagrant](https://www.vagrantup.com/downloads.html). >=1.5.1

Once you've installed Virtualbox and Vagrant you can test your setup by:

1. changing into this repo and running `vagrant up`. Note the first run will take a lot longer as it has to download the base image you'll be using for the rest of this tutorial.
1. You can ssh into the box with `vagrant ssh` and test networking `ping google.com` You can test passwordless sudo with `sudo id`.
1. You'll need one more thing downloaded and installed for some of these exercises: `vagrant plugin install vagrant-hosts`
1. Lastly you can `exit` out of the ssh session and free up your resources with `vagrant destroy -f`

what's here
___________

In this there are a couple of Vagrant files to show you some of the basics. These will get you from a clean image to working with configuration management, specifically puppet in this case. There is also an example program that we can test, setup an init script and package.
