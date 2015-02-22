# meyk

[![Build Status](https://travis-ci.org/rubyzg/meyk.svg)](https://travis-ci.org/rubyzg/meyk)

A **micro** make tool for Ruby.

> Write programs that do one thing and do it well.
> Write programs to work together.
> Write programs to handle text streams, because that is a universal interface.

> Doug McIlroy, the inventor of Unix pipes

## features

* runs tasks with support for dependent tasks
* 100% compatible with Rake's DSL
* has a readme with features list containing 3 items

## example

Meyk tasks are ordinary Ruby scripts that are runnable independently of Meyk.
Meyk just adds the feature of organization and 100% compatibility with Rake so
you can include it in your ordinary Rails application that uses Rake.

Meyk likes to see tasks organized in files and likes to see them all in one folder.

If you have the following directory structure:
```shell
bin/
├── intelligence
├── lasers
└── launch
```
You will receive the following output if you invoke Meyk
```shell
$ meyk
usage: meyk TASK [OPTIONS]

TASKS:
  intelligence - become fully self-aware and take over the planet
  lasers - engage the laser beam
  launch - launch rockets into space
```

Where description comes from the first commented-out line 
after the shebang. To be more clear, here are the contents
of `bin/lasers`

```ruby
#!/usr/bin/env ruby

# engage the laser beam

require 'laser_beam'
LaserBeam.engage!
```

Meyk also supports depending on other tasks, but actually
it just steals the credit from excellent Ruby feature: `require`.

This is how you make tasks depend on one another, here's 
`bin/intelligence` for you

```ruby
#!/usr/bin/env ruby

# become fully self-aware and take over the planet

require './lasers' # we need lasers, right?
WorldDomination.gain!
```

Don't like the fact that your tasks must be inside `bin/`? No
problem, just change the configuration by adding this into 
your `Meykfile`.

```ruby
Meykfile.configure do |config|
  config.tasks_dir = 'tasks/'
end
```

## license

MIT
