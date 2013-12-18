# middleman-site-cssowl

> The cssowl.owl-stars.com website powered by Middleman.

## Requirements

To build, run and deploy this project you need the following tools:

* [Rvm](https://rvm.io/)
* [Rake](http://rake.rubyforge.org/)
* [Node & Npm](http://nodejs.org/)
* [Bower](http://twitter.github.com/bower/)
* [Middleman](http://middlemanapp.com)
* [Middlesite](https://github.com/franklinkim/middlesite)

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

### Middlesite

To install `middlesite` run:

```
$ gem install middlesite
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

To update the documentations run:

```
$ rake docs
```

*Note: You need to have libriarianowl installed locally and prerun `npm link`*

### Deployment

With `middlesite` you have the following commands:

```
Commands:
  middlesite build           # Generate build from sources
  middlesite bump [TYPE]     # Bump version (patch|minor|major), commit, tag, and push.
  middlesite deploy          # Build and deploy to server
  middlesite help [COMMAND]  # Describe available commands or one specific command
  middlesite init            # Initialize the workspace.
  middlesite server          # Build and start server
```

## License
Copyright (c) 2013 Owl-Stars.