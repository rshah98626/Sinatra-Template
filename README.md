# Test App (change name if forked)

## Pre-Installation instructions
First, for Mac, you may have to download another version of Ruby. Your version of Ruby (`which ruby`) should not be `/usr/bin/ruby`. Follow these instructions to download Ruby: https://stackoverflow.com/questions/51126403/you-dont-have-write-permissions-for-the-library-ruby-gems-2-3-0-directory-ma

## Installation instructions
1. Install postgresql, run it in the background, and log into it (on Mac the command is `psql -d postgres` to log in).
2. Once inside the database run `\list`. You should see a list of databases. At this time, if you have never installed postgres before, there should only be one database named postgres.
3. Run `\q` to log out of the database.
4. Add `export RUBYOPT='-W0'` to your `.bashrc` or `.zshrc`, whichever you use. Be sure to source the file or restart the terminal to have the changes to take effect.
5. Run `bundle install`. You should see gems being installed.
6. Run `rake db:create`. This creates the database. You may see some deprecation messages, just ignore them. The last two lines should say:
```
Created database 'testapp-development'
Created database 'testapp-test'
```
7. Run `rake db:migrate`

## Start server
`bundle exec shotgun`

## Run tests
`bundle exec rspec`
