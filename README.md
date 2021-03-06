### Announcement Posted By:
Michael van Rooijen ( [@meskyanichi](http://twitter.com/#!/meskyanichi) )

**This is the Backup 3 place holder page**, [click here if you were looking for Backup 2](https://github.com/meskyanichi/backup/tree/backup-2).

Backup 3 - ETA (Update)
==============

I have delayed the Backup 3 release just a little because I'm lacking a bit of time to finish it up. I said it'd be out just before March, but as it stands now I think I'll need until around mid-end March 2011. I also want proper documentation on release so people can pick it up without hassle.

Backup 3 - Coming Soon!
=======================

I am currently hard at work developing Backup 3.0. This is a __100% rewrite__ of the gem. There are a bunch of goals I've set for this next big release, a few of which are:

* Great test coverage __(100% TDD)__
* Tested against __Ruby 1.8.7__ and __Ruby 1.9.2__
* Greatly __reduce__ the amount of __dependencies__ and use better dependencies
* Drop SQL-based backup recording (so no more SQLite nor ActiveRecord ORM)
* Recording will be done using pure YAML (no dependency)
* Write code that's a lot more flexible, extensible, modular and maintainable
* A better DSL for the configuration file
* Try to incorporate as much feedback/good idea's I got from you guys (and at least keeping them in mind while building the base structure)
* Allow users to specify everything they need in a single configuration block
* Allow users to utilize multiple databases, archives, compressors, encryptors and storage locations for a __single__ backup
* Allow the user to specify default configuration for particular properties (S3, CF, DB, etc.)
* __Drop Ruby on Rails support__ (This is a pain to maintain and isn't worth supporting, Backup is better without it using the CLI)
* A better Command Line Utility/Interface
* Better defaults, for example no more `/opt/backup` but `$HOME/backup` to avoid permission and other issues for non-root users
* The freedom (through CLI) to specify the location of the configuration file on the filesystem, as well as the location of where the dumped .yml files should be stored and loaded

These are a few of the goals I've set for the next release. Feel free the view the source. I probably won't release the initial version with __every__ feature that Backup 2 has when it first comes out, but it'll have plenty of features to start off with. Also, it'll be __a lot__ easier to maintain it and improve it now that it has good test coverage, and is more modular and extensible. So expect a lot more to come in Backup 3 in the future! I am really excited about this one.


Backup 3 - No Ruby on Rails support?
====================================

Ruby on Rails support was probably one of the biggest problems that Backup 2 had. It made maintenance a pain and the code became way too brittle and hard to test. As of Backup 3 there will be __no Ruby on Rails__ support. Backup is easy enough to use/setup/configure through an SSH protocol. The command line utility I'll be providing will be easy to use as well. Everything will also be well-documented on the wiki pages!


Backup 2 - Issues, Wiki, Source, Gems
=====================================

I won't actively support Backup 2 anymore. The source will remain on [a separate branch](https://github.com/meskyanichi/backup/tree/backup-2). [The Issues](https://github.com/meskyanichi/backup/issues) that belong to Backup 2 have been tagged with a black label "Backup 2". The Backup 2 specific [Wiki pages](https://github.com/meskyanichi/backup/wiki) have been prefixed with "Backup 2) <Article>". [The Backup 2 Gems](http://rubygems.org/gems/backup) will always remain so you can still use Backup 2. I might still accept pull requests, but would highly encourage anyone to [move to __Backup 3__ once it's here](https://github.com/meskyanichi/backup).


Michael van Rooijen ( [@meskyanichi](http://twitter.com/#!/meskyanichi) ) | Final Creation