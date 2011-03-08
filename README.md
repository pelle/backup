Backup 3
========

Backup is a RubyGem (for UNIX-like operating systems: Linux, Mac OSX) that allows you to configure and perform backups in a simple manner using an elegant Ruby DSL. It supports various various databases (MySQL, PostgreSQL, MongoDB and Redis), it supports various storage locations (Amazon S3, Rackspace Cloud Files, Dropbox, any remote server through FTP, SFTP, SCP and RSync), it can archive files and folders, it can cycle backups, it can do incremental backups, it can compress backups, it can encrypt backups (OpenSSL or GPG), it can notify you about successful and/or failed backups. It is very extensible and easy to add new functionality to. It's easy to use.


Database Support
----------------

- MySQL
- PostgreSQL
- MongoDB
- Redis

Filesystem Support
------------------

- Files
- Folders

Storage Locations
-----------------

- Amazon Simple Storage Service (S3)
- Rackspace Cloud Files (Mosso)
- Dropbox
- Remote Servers (Available Protocols: FTP, SFTP, SCP and RSync)

Storage Features
----------------

- Backup Cycling, applies to:
  - Amazon Simple Storage Service (S3)
  - Rackspace Cloud Files (Mosso)
  - Dropbox
  - Remote Servers (Only Protocols: FTP, SFTP, SCP)
- Incremental Backups, applies to:
  - Remote Servers (Only Protocol: RSync)


Backup 2 - Issues, Wiki, Source, Gems
=====================================

I won't actively support Backup 2 anymore. The source will remain on [a separate branch](https://github.com/meskyanichi/backup/tree/backup-2). [The Issues](https://github.com/meskyanichi/backup/issues) that belong to Backup 2 have been tagged with a black label "Backup 2". The Backup 2 specific [Wiki pages](https://github.com/meskyanichi/backup/wiki) have been prefixed with "Backup 2) <Article>". [The Backup 2 Gems](http://rubygems.org/gems/backup) will always remain so you can still use Backup 2. I might still accept pull requests, but would highly encourage anyone to [move to __Backup 3__ once it's here](https://github.com/meskyanichi/backup).


Michael van Rooijen ( [@meskyanichi](http://twitter.com/#!/meskyanichi) ) | Final Creation