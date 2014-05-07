# FullcalendarResourceViews::Rails

This gem is a simple rebundling of the contents of the fork of the JQuery FullCalendar plugin from Adam Shaw with Resource Views:

http://tux.fi/~jarnok/fullcalendar-resourceviews/



## Installation

Add this line to your application's Gemfile:

    gem 'fullcalendar-resourceviews-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fullcalendar-resourceviews-rails

At this point, the files from the fullcalendar project are in your asset pipeline's path... all you have to do is require them in the appropriate places.  For instance, in your application.css.scss:

    *= require fullcalendar-resourceviews

And in your application.js:

    //= require fullcalendar-resourceviews

You can also include the fullcalendar.print file in your css manifest like this:

    *= require fullcalendar.print

but as Ray Zane pointed out in issue #11, this will cause a problem if you try to change the colors of events.

An ideal solution, if you need a print stylesheet, is to create an application-print.css.scss file and include this (and other print-related css) in it.  You'll then need to add it to to the precompile array in config/application.rb:

    config.assets.precompile += ['application-print.css']

and then in your layouts where you need it, add:

    <%= stylesheet_link_tag "application-print", :media => "print" %>


While its not needed for this library, the original javascript library's author also includes an adapter for integrating google calendars as an event source:

    //= require gcal

## Usage

See the website of the original project for the usage, or my original Rails3 example I point to above.  This gem just saves you from having to locate and copy the javascript and stylesheet into place.

http://arshaw.com/fullcalendar/


## Versioning

I am going to version this gem with the version of the fullcalendar code I use, adding an extra digit if I need to release any maintenance versions of the gem itself.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

If the original library I'm basing this off of has tests, I'd like to integrate that into the gem as well; but if it doesn't, its not the end of the world... as this is just a 'shrinkwrap' of someone else's work, I don't take on any testing responsibility within the scope of packaging.
