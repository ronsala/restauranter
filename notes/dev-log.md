# Dev Log

## *Ron Sala*

## Sun Mar 28 19:17:15 EDT 2021

Created a `redux-project/notes` folder and in it files with the project requirements, spec.md, CHECKLIST.md, and this log.

Found handy vim shortcut for inserting a timestamp: `:r! date`.

Began reading [https://redux-toolkit.js.org/](https://redux-toolkit.js.org/).

## Sat Apr  3 20:34:28 EDT 2021

Continued reading Redux Toolkit docs. At [https://redux-toolkit.js.org/usage/usage-guide#using-action-creators-as-action-types](https://redux-toolkit.js.org/usage/usage-guide#using-action-creators-as-action-types).

## Thu Apr  8 19:05:36 EDT 2021

Continued reading RTK docs. Started breaking checklist items into MVP and Stretch levels.

## Fri Apr  9 18:52:44 EDT 2021

Finished separating MVP and Stretch, set up backend repo. Working on permissions issue when trying to install node module:

```RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » npm install --global belly
npm WARN checkPermissions Missing write access to /usr/local/lib/node_modules/belly
npm WARN checkPermissions Missing write access to /usr/local/lib/node_modules
```

## Sat Apr 10 14:28:03 EDT 2021

Tested the belly library with a test commit:

`belly c -m "test belly library"`

It successfully committed to Github after I got a prompt to put in my Keychain password.

Tested again using an alias:

`bcm "test belly again"`

Successful commit without being prompted for password.

Trying to check my ruby version I get:

```RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » ruby -v                                                                                            134 ↵
dyld: Library not loaded: /usr/local/opt/gmp/lib/libgmp.10.dylib
  Referenced from: /Users/RonSala/.rvm/rubies/ruby-2.6.3/bin/ruby
  Reason: image not found
```

Been troubleshooting such reference problems, possibly created by having migrated my data from my old Mac to my new one. Now trying to reinstall a ruby, which is involving updating homebrew and install Xcode command line tools.

I can now get versions of ruby and rails:

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » ruby -v 
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin20]
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » rails -v
Rails 6.0.3.1
```

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » rails new restauranter-backend --skip-test
```

Got a message at the end to install yarn. Was able to overcome

```
npm WARN checkPermissions Missing write access to /usr/local/lib/node_modules
```

with

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » sudo npm install --global yarn
```

Defined a snippet for markdown files to insert a code block. Made some changes to settings.json for Code in the process. It's at `~/Library/Application Support/Code/User/snippets/rons-global-user-snippets.code-snippets`:


```
  "Code block": {
  		"prefix": "cb",
		  "body": [
      "",
			"```",
      "$1",
      "```",
      "",
			"$0"
		],
		"description": "Make a code block"
	}
```

I can do it with CONTROL+SPACE, then its prefix, landing at `$1`, then tabbing to $0.

While trying to commit, got

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹master*› » git add .                                                                                                                       1 ↵
error: 'restauranter-backend/' does not have a commit checked out
fatal: adding files failed
```

Fixed it by removing a redundant subfolder.

## Sun Apr 11 10:40:11 EDT 2021

Created Menu with scaffold. Setting up Postgres following [https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos), adapting it for zsh:

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » source ~/.zshrc
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » code ~/.zshrc
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » postgres -V
postgres (PostgreSQL) 13.2
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » echo 'export PATH="/usr/local/opt/postgresql@13.2/bin:$PATH"' >> ~/.zshrc       

RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » source ~/.zshrc                                                          
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » code ~/.zshrc                                                            
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » echo $PATH
/usr/local/opt/postgresql@13.2/bin:/Users/RonSala/bin:/usr/local/bin:/Users/RonSala/bin:/usr/local/bin:/Users/RonSala/.rvm/gems/ruby-2.6.3/bin:/Users/RonSala/.rvm/gems/ruby-2.6.3@global/bin:/Users/RonSala/.rvm/rubies/ruby-2.6.3/bin:/Users/RonSala/.rvm/bin:/Users/RonSala/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/RonSala/.fig/bin:/Users/RonSala/.rvm/bin:/Users/RonSala/.rvm/bin
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » createuser -d restauranter
```

Added the latest pg gem. When I ran the server as indicated in the article, got an error, so

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » rails webpacker:install
```

Yay! I'm on Rails!

Changed repo name to restauranter-backend.


