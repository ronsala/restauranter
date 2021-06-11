# Restauranter Backend Dev Log

[https://github.com/ronsala/restauranter-backend](https://github.com/ronsala/restauranter-backend)

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

Looking into db, as I don't see sections being created. Following [https://www.postgresqltutorial.com/psql-commands/](https://www.postgresqltutorial.com/psql-commands/)

I can't create a section, either from seeds or from console. I can create a menu. 

After experimenting in console, it looks like AR won't accept records that don't have a valid ID from the model they belong to.

Found this cool trick [https://aneta-bielska.github.io/blog/rails-c-5-ways-to-get-pretty-output.html](https://aneta-bielska.github.io/blog/rails-c-5-ways-to-get-pretty-output.html) and put it to immediate use showing my sections in the rails console beau·ti·ful·ly with pry.

## Mon Apr 12 20:51:49 EDT 2021

Started comparing the previous Rails API I made to the current project. Want to eliminate parts not needed for API only. Wish I'd have set a flag to optimize for that when I set up the app.

Trouble with Postgres after updating it. It said I had a server already using the port. Finally killed it with

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » brew services stop postgresql
Stopping `postgresql`... (might take a while)
==> Successfully stopped `postgresql` (label: homebrew.mxcl.postgresql)
```

then was able to start a new server.

Unfortunately, was not able to seed. Then, tried

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu*› » rails db:create
FATAL:  role "restauranter" does not exist
Couldn't create 'restauranter_development' database. Please check your configuration.
```

## Tue Apr 13 20:30:27 EDT 2021

Fixed this with

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu› » createdb restauranter_development
```

and

```
RONALDs-MacBook-Pro-2 dev/restauranter-backend ‹menu› » createuser restauranter
```

## Wed Apr 14 22:09:47 EDT 2021

Added serializer files for Section, Item.

## Tue Apr 20 21:13:28 EDT 2021

Updating README's and other documentation.

Next time, should fix README typo(s) and update git, having got this in the frontend:

```
Unable to stash changes. Stashing so many files (2031) at once requires a newer version of Git (>= 2.30.0) than is currently installed (2.24.3 (Apple Git-128)). Please retry by stashing fewer files or install a more recent version of Git.
```
## Thu Apr 22 16:26:50 EDT 2021

Instead of stashing, opted to get rid of the changes seemingly unrelated to the backend repo that were cluttering up the source control.

## Fri Apr 23 21:03:09 EDT 2021

```
RONALDs-MacBook-Pro-2 restauranter/restauranter-backend ‹menu*› » bcm "namespace api/V1"
✔ belly committed your work with this message: namespace api/V1
✔ belly pushed your work to origin
RONALDs-MacBook-Pro-2 restauranter/restauranter-backend ‹menu*› » bcm "set up menu serialization"
✔ belly committed your work with this message: set up menu serialization
✔ belly pushed your work to origin
RONALDs-MacBook-Pro-2 restauranter/restauranter-backend ‹menu› » rails db:seed
RONALDs-MacBook-Pro-2 restauranter/restauranter-backend ‹menu*› » bcm "fix menu seed"
✔ belly committed your work with this message: fix menu seed
✔ belly pushed your work to origin
RONALDs-MacBook-Pro-2 restauranter/restauranter-backend ‹menu› » 
```

## Sat Apr 24 19:49:13 EDT 2021

Found I can trigger my code block snippet from VS-Code-Vim's INSERT mode, not NORMAL.

```
ronsala added 5 commits 4 hours ago
@ronsala
comment out example code
774e98a
@ronsala
set up menuSlice
6dc0f07
@ronsala
debug menu
1537c3d
@ronsala
develop menu
75e9974
@ronsala
touch src/features/menu/MenuContainer.js
c9a9502
```

## Sun Apr 25 06:51:26 EDT 2021

Changed title of this doc to "Restauranter Backend Dev Log". Will create a corresponding log in the frontend.

## Tue Apr 27 19:37:53 EDT 2021

Got seeds working for second menu. Next time, will do some planning clarifying additional models to be set up, e.g. Check [cart], Customer, Proprietor, etc. Also, could be handy to better visually separate the MVP checklist items from the later ones.

## Fri Apr 30 14:27:18 EDT 2021

Further reducing parts of the MVP project that go beyond the assessment requirements. Can add them later.

Looking at [https://egghead.io/lessons/react-create-a-stateless-functional-component-for-an-input-form](https://egghead.io/lessons/react-create-a-stateless-functional-component-for-an-input-form).

## Mon May  3 19:07:03 EDT 2021

Had checked out [https://github.com/andela/dinner-dash-rails](https://github.com/andela/dinner-dash-rails) for ideas.

Switching to building Restaurant.

## Sun May  9 06:37:52 EDT 2021

Have decided to switch up what the MVP will do, so as to have an app that is fully functional from the UI, rather than relying only on data from the seed file.

Now updating notes files.

## Fri Jun  4 21:05:49 EDT 2021

Dakota recommended a blog post on switching a Rails app to api: https://hashrocket.com/blog/posts/how-to-make-rails-5-api-only.

## Sat Jun  5 13:15:33 EDT 2021

I notice the article addresses Rails 5, and I'm on 6. Followed the steps and got

```
         1: from /Users/RonSala/.rvm/gems/ruby-2.6.3/gems/railties-6.0.3.6/lib/rails/initializable.rb:32:in `instance_exec'
/Users/RonSala/.rvm/gems/ruby-2.6.3/gems/sprockets-rails-3.2.2/lib/sprockets/railtie.rb:106:in `block in <class:Railtie>': Expected to find a manifest file in `app/assets/config/manifest.js` (Sprockets::Railtie::ManifestNeededError)
But did not, please create this file and use it to link any assets that need
to be rendered by your app:

Example:
  //= link_tree ../images
  //= link_directory ../javascripts .js
  //= link_directory ../stylesheets .css
and restart your server

For more information see: https://github.com/rails/sprockets/blob/070fc01947c111d35bb4c836e9bb71962a8e0595/UPGRADING.md#manifestjs
```

Think that's what I got last time I tried to remove it. I note that that file was empty. I just needed one to avoid the error. Added it back and everything appears to be working.

## Thu Jun 10 17:16:15 EDT 2021

Mulling how to handle Proprietors and Patron. Currently have them as separate models.

Possibilities:

Backend:

* Proprietor model. Restaurant model with :proprietor_id. Patron model. Order model with :patron_id and :restaurant_id.

S: Current state.
B: 
A: Con: User has to create 2 accounts.
R: 

* User model with :proprietor and :patron bool attributes.

S: 
B: 
A: 
R: 

Pro: User only has to create 1 account.

* User model that may has one Proprietor and/or one Patron (account).

S: 
B: 
A: 
R: 

* User model that has many restaurants.

S: 
B: 
A: Pro: User only has to create 1 account. Simple.
R: Recommend. 

Frontend:

* restaurant entities with :user_id attribute.
