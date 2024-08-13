[parm]:numberHeaders        = 2 3 4
[parm]:leanpubExtensions    = 1
[parm]:title                = 'Meddy ReadMe'
[parm]:toc                  = 2 3
[parm]:saveHTML             = 1


Read me
=======

Purpose
-------

`Meddy` is a simple 64-bit Markdown Windows-only editor written in Dyalog APL; it allows one to edit a Markdown file and to convert it into valid HTML5 by using MarkAPL; if you don't know what MarkAPL is, refer to <https://github.com/aplteam/MarkAPL> for details.

Meddy's main advantage is not its features, it's the fact that MarkAPL is used as converter: by using an editor which uses MarkAPL you can take advantage of the features that are specific to MarkAPL.

Another feature worth mentioning is Meddy's advanced table editing capability: commands are available for formatting tables in the Markdown, inserting columns, moving rows and columns and jumping from column to column.

The application was created with Dyalog 19. 64 bit Unicode but is delivered as a stand-alone EXE, meaning that you don't need this version of Dyalog - or any version - in order to run it.


Usage
-----

You can start Meddy like any other Windows application and then use the menu command "New" or "Open" from the "File" menu. 

You can also start it from the command line with one of these statements in order to open a specific file or create a new document:

~~~
      Meddy.exe -file="{/path/To/MarkdownFile.md}
      Meddy.exe -new
~~~

You can also use drag-and-drop, either by dragging a markdown document onto the `Meddy.exe` file or by starting Meddy and than dragging a markdown document over its GUI.

Once a document is loaded (or created) there are three panes available in the main GUI:

* The left pane shows a tree view that represents all headers in the document and therefore acts as a table of contents. You can use this to navigate through the document.

  Note that when an item in the tree view is shown in bold then you have a problem in the header hierarchy like a header of level 3 following a header of level 1: that's illegal.

* The center pane is where the Markdown can be edited.

* The right pane is two-fold:

  * On the "Preview" tab it shows a preview of how the HTML5 generated from the markdown will look like. For this the latest Microsoft engine is used. If available that is Edge.

    Note that for technical reasons the preview will show presentations as a single HTML page. Use the "View HTML in default browser" menu command to run the presentation as such.

  * On the "HTML" tab it shows the HTML generated from the markdown.

    By ticking the "Hide CSS" check box you can prevent the CSS --- which is a single compressed line --- from blurring your HTML. Of course the CSS is not removed from the HTML, it's just not shown.
    
If you wish to update the preview and/or the table of contents either select "Refresh preview" from the "Edit" menu or press F5. Pressing Ctrl+S (or selecting the "Save" command from the "File" menu) always refreshes the preview area and the table of content.

Tick the "Hide right pane" check box in order to use the space occupied by the "Preview" area for editing the markdown.


### Navigating through a document

You can navigate through a document in two ways:

* Click on an item in the TreeView representing the TOC (table of contents).
* Click on a header in the Preview area.

No matter how you navigate, the three views are always kept in sync.

Note that the TOC offers a context menu command "Find in TOC..." for searching just the headers.


CSS Style sheets
----------------

Since version 4.0.0 Meddy uses the "Dark" style sheet by default for the preview. You can switch to a different one via the "Preferences" menu (= for all documents you are going to save). 

However, changing the preferences only takes effect after the current document, if any, is re-opened.

In case you had Meddy installed and used before "Dark" was invented (4.0.0) you might need to check in the "Preferences" dialog box which style sheet is selected. Choosing "Dark" is recommended.

You can also embed a parameter into any markdown document explicitly defining the style sheet to be used. This is the recommended way to use your own taylor-made CSS.

The CSS defined in the style sheet is by default compressed and injected into the resulting HTML page. That makes the HTML fully independent from anything, at least as long as you do not, say, embed images.

Instead of creating a stand-alone HTML page you might want to create one that links to one or more style sheets, for example in order to create a book-like website. In order to make that possible you have to tell Meddy which style sheets to use etc.

This can be achieved by setting these parameters:

~~~
[parm]:cssUrl='file:///CSS/'
[parm]:linkToCss=1
[parm]:leanpubExtensions=1
[parm]:screenCSS='Screen.css'
[parm]:printCSS='Print.css'
~~~

Note that you can specify more than one CSS file: separate them with commata. In case of a conflict the last hit wins.

Notes:

* There is more information available in the document "Styles.html". The document can be viewed from the "Help" menu.

⍝ * You can also specify one or more CSS files via the (optional) [INI file command line parameter](#meddy_config).

* All style sheets that are coming with Meddy carry markup for the LeanPub extensions.

* `cssURL` should either be a URL or specify the CSS folder relative to where the HTML page will be saved.


LeanPub extensions
------------------

LeanPub (<https://leanpub.com/>) is a publishing platform for books. They've established a number of enhancements to Markdown that allow an author to add asides, info boxes and more, but also to highlight lines in the code, for example for emphasizing lines that have been changed or added compared with a previous version. The extensions might well be of interest to you even if you are not planning to use LeanPub's services.

There is a document "LeanPubExtensions.html" available in the Meddy install directory that documents these extensions. The document can be viewed from the "Help" menu.


Converting to and saving as HTML file
-------------------------------------

When a Markdown file is saved by Meddy for the first time then it will ask you whether you want to save an HTML file as well along with the Markdown file. 

If you answer that with a "Y" then Meddy will always save the HTML in its own file whenever you save the Markdown during the current session.

If you originally said "no" but change your mind later, you can execute the menu command "Save HTML" from the "File" menu.

If you don't want the HTML file to be saved as a sibling of the Markdown file but somewhere else then you can add a file `.meddy` to the folder where the Markdown file lives. 

This file may contain a line like this:

~~~
outputPath = '..\'
~~~ 

This lets Meddy save the HTML file in the parent folder of the folder the Markdown file came from.

Instead you can of course also specify an absolute path:

~~~
outputPath = 'C:\My_HTML'
~~~

You can embed `saveHTML` as a parameter and specify it as...

* 0 for **never** saving an HTML file
* 1 for **always** saving an HTML file


INI Files
---------

### app.ini

Meddy relies on the INI file `app.ini`: if that cannot be found then Meddy cannot run.


### User-defined INI file

There is an INI file available that documents the options available via a user-defined INI file. It's name is `user.ini.optional`, meaning that it is not identified and used by Meddy.

In order to make Meddy process --- and honour --- it, remove the `.optional` part from it.

In case you wonder about those parameters: picture a situation were you want use Meddy as an editor for certain Markdown files that are part of a particular application. In such a scenario you might want to...

* enforce a specific working directory
* disallow the user to enter the "Preferences" dialog (because those would be ignored anyway)
* disallow (or enforce) saving an HTML file when the Markdown is saved
* specify particular CSS files
* enable LeanPub extension (they are disabled by default)
* enforce that any conversion errors provided by MarkAPL are shown to the user; by default they are not

Therefore the INI file would most likely go into another's application folder rather than stay (like `special.ini`) in the Meddy installation folder.

If such parameters are defined (no matter where) then they take precedence over anything else but command line parameters.

#### Specify user-defined INI file via the command line

In cases when the user- or application specific INI file cannot live in Meddy's installation directory you need a way to tell Meddy which INI file to use along with `app.ini`. This can be achieved by specifying `-ini="path/to/ini"` on the command line.

#### The `workdir` parameter

In a user-defined INI file one might specify the parameter `workdir`. That might well be a path, but since the user-defined INI file is likely to be in the folder (or at least parent folder) that is going to be the working directory you can simply specify something like this:

```
workdir = `[INI]`      ⍝ Same as the INI file
workdir = `[INI]/docs` ⍝ Sub folder docs\ of the folder the INI file lives in
```

This way you can make sure that even when the INI file is moved around Meddy will adapt.

Note however that Meddy will not actually change the working directory (otherwise it would not "see" its own icon file etc.) but it will make sure that when the user, say, presses Ctrl+O it will "look" into what was specified as `workdir`.

Note that you can influence the working directory also via a command line option by specifying `-dir="path/to/workdir"`; see [Command line parameters](#).


### The (optional) INI file "specialchars.ini"

This INI file may or may not exist. By default it does exist and looks like this:

```
[CHARS]
Umlaute        = ''
Umlaute        ,= 'äöü'
Umlaute        ,= 'ÄÖÜ'
Umlaute        ,= 'ß'

Currency    = ''
Currency    ,= '$£€¥'

Misc        = ''
Misc        ,= '«»' 
```

If there is such an INI file then a bar with those characters is displayed right under the menu bar.

The user may inject any of them into the markdown document at the cursor position by simply clicking at them.

This is a necessary measure because Dyalog's "Edit" control does not allow entering Unicode symbols by pressing `<Alt>` with a certain numeric code.


Command line parameters
-----------------------

You can set a number of command line parameters:

`-file=`

: Use this to specify a Markdown file: Meddy will open that file straight away

`-new`

: This makes Meddy create a new (empty) Markdown file on start-up

`-ini=`

: Use this in order to specify a [User defined INI file](#) '

`-dir=`

: Use this to specify a directory that will become Meddy's working directory'

: If specified this takes precedence over any `workdir` settings in an INI file.

`-posn=`

: Use this in order to specify `Posn` for Meddy's main GUI window '

`-ride=`

: Use this to "give Meddy a Ride". The value assigned to `-ride` is interpreted as the Ride port number.

: By specyfing this you _must_ Ride into Meddy. That means that when you set this parameter and then start Meddy nothing seems to happen. This is because Meddy then enters an endless loop waiting for a Ride. 

Note that in case a parameter is specified both in a user INI file and on the command line the latter one wins.


Regarding MarkAPL
-------------

Meddy comes with a particular version of `MarkAPL.dyalog`. You cannot update MarkAPL in any way, for that a new version of Meddy needs to be compiled.

You can find out  which version of MarkAPL Meddy is currently using via the "About" command from the "Help" menu.


Add user help
-------------

You can add one (literally!) additional file to the help file by adding a `[HELP]` section with two entries `title` and `file` to it.

Example:

```
[Help]
title  = 'Special help'
file    = 'C:\SpecialHelp.html'
```

This would add a menu item "Special help" to the "Help" menu. When selected the file `C:\SpecialHelp.html` would be displayed in your default browser.

Usually this would go into a [User-defined INI file](#) rather then `app.ini`.


Bugs
----

* Check whether it has already been reported on [Meddy's issue list](https://github.com/aplteam/Meddy/issues)

* If not open a new issue and flag it as a bug report. 

* Describe what you did, what you expected to happen and what actually happened. Don't assume that anything of this is obvious: it might well be for you but not necessarily for somebody else.

* Attach the files created as a result of the crash; crash files are written to:

  `"C:\Users\{UserID}\AppData\Local\Meddy\Errors"`
* Add the input file if possible. 

  If that is not possible (usually for security / data protection reasons) add the block that is not processed as expected _plus a couple of lines above and underneath_.


Feature requests
---------------

Open an issue on GitHub, explain your idea and mark it as "enhancement". 


Misc
----

Meddy is free software. It may be distributed freely but must not be sold. Also, the code of the application must not be re-engineered and/or used for other purposes.

Meddy was originally written by Kai Jaeger

|Created    |2017-10-23|
|Version    |5.0.1     |
|Last update|2024-08-13|






