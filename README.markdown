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
  ```

* `git clone git://github.com/SethMilliken/vimscriptdev.info.git`
* `cd vimscriptdev.info`
* `git checkout nanoc`
* `bundle`
* `mkdir -p output/images/icons/callouts/`
* `nanoc compile && nanoc view`
* visit <http://localhost:3000>

TODO
--------------------------------------------------------------------------------
Random list of things to do.

__Essential__

* `[X]` move nanoc setup to existing vsdi repo
* `[ ]` switch vimscriptdev.info domain to point at github pages repo
* `[X]` .rvmrc
* `[X]` Gemfile
* `[ ]` document pygments modifications
  * ideally fix nanoc to allow pygments args so this isn't necessary
* `[ ]` strip out asciidoc auto-inlined style info in compile step
* `[ ]` clean up syntax.css

__Nice__

* `[ ]` add links to helpers documentation pages in lib/default.rb
  * maybe just make nanoc a subrepo?
* `[ ]` compile-to-css tech
* `[ ]` create nicer-looking callout graphics (ideally, css-only)
