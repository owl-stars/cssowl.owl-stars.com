# middleman-site-cssowl

> The cssowl.owl-stars.com website powered by Middleman.

## Requirements

To build, run and deploy this project you need the following tools:

* [Rvm](https://rvm.io/)
* [Rake](http://rake.rubyforge.org/)
* [Node & Npm](http://nodejs.org/)
* [Bower](http://twitter.github.com/bower/)
* [Middleman](http://middlemanapp.com)

### Rvm

To install `rvm` on your system run:

```
$ curl -L https://get.rvm.io | bash -s stable --ruby=1.9.3
```

To update `rvm` run:

```
$ rvm get stable
```

*Install [Jewelybox](http://jewelrybox.unfiniti.com/) to see installed Rubys and Gems through a nice GUI.*
```

### Rake

To install `rake` run:

```
$ gem install rake
```

### Node & Npm

Download and run the latest installer at [nodejs.org](http://nodejs.org/).

### Bower

To install `bower` run:

```
$ sudo npm install bower -g
```

### Middleman

To install `middleman` run:

```
$ gem install middleman
```

## Workspace

### Setup

To setup your workspace checkout the repository:

```
$ git clone ssh://git@bitbucket.org/owl-stars/middleman-site-cssowl.git
```

To install all the dependencies run:

```
$ rake init
```

### Development

You can start the development server with:

```
$ rake server
```

If you want to build all the files run:

```
$ rake build
```

### Deployment

If you want to deploy all the changes to the server run:

```
$ rake deploy
```

## License
Copyright (c) 2013 Owl-Stars.