vimscriptdev.info nanoc
================================================================================
Okay, phase two, or ten or whatever it is now. [nanoc](http://nanoc.stoneship.org/)
seems to be a much better fit for what I'd like to do here. Give it a try and let
me know what you think.

Start
--------------------------------------------------------------------------------
* install asciidoc
* install pygments
* neuter asciidoc's auto-inlined pygments style
  * on mac os x installed via brew, here: `/usr/local/Cellar/asciidoc/8.6.7/etc/asciidoc/stylesheets`. make `pygments.css` empty.
* add to `~/.asciidoc/asciidoc.conf`:

  ```conf
  [attributes]
  pygments=
  icons=
  iconsdir=/images/icons
  ```

* `git clone git://github.com/SethMilliken/vimscriptdev.info.git`
* `cd vimscriptdev.info`
* `git checkout nanoc`
* `bundle`
* `nanoc compile && nanoc view`
* visit <http://localhost:3000>

Resources
--------------------------------------------------------------------------------

__Filters__

* LESS <http://lesscss.org/>
* Sass <http://sass-lang.com/tutorial.html>
* Typogruby <http://avdgaag.github.com/typogruby/>
* RDiscount <http://rdoc.info/github/rtomayko/rdiscount/master/RDiscount>
* AsciiDoc
  * configuration <http://www.methods.co.nz/asciidoc/chunked/ch26.html>
  * cheatsheet <http://powerman.name/doc/asciidoc>
* Slim lightweight templating <http://slim-lang.com/>
  * vim syntax <https://github.com/bbommarito/vim-slim>
* Markaby ruby templating DSL <http://markaby.rubyforge.org/>
* CoffeeScript javascript <http://coffeescript.org/>

__Explore__
* TimeAgo jQuery plugin  <http://timeago.yarp.com/>
* Nokogiri <http://nokogiri.org/>

__Consider__

* Comments? http://mattgemmell.com/2012/01/07/comments-commentary/

TODO
--------------------------------------------------------------------------------
Random list of things to do.

__Essential__

* `[o]` strip out asciidoc auto-inlined style info in compile step
  * `[ ]` migrate appropriate styles from `content/ad.css`
* `[ ]` clean up syntax.css
* `[ ]` document pygments modifications
  * ideally fix nanoc to allow pygments args so this isn't necessary
* `[X]` move nanoc setup to existing vsdi repo
* `[X]` switch vimscriptdev.info domain to point at github pages repo
* `[X]` .rvmrc
* `[X]` Gemfile
* `[X]` fix need for `mkdir -p output/images/icons/callouts/`

__Nice__

* `[ ]` add links to helpers documentation pages in lib/default.rb
  * maybe just make nanoc a subrepo?
* `[ ]` compile-to-css tech (Sass, LESS, etc.)
* `[ ]` create nicer-looking callout graphics (ideally, css-only)
