[parm]:numberHeaders=2 3 4
[parm]:leanpubExtensions=1
[parm]:printCSS='BlackOnWhite_print.css'
[parm]:screenCSS='BlackOnWhite_screen.css'
[parm]:title='Meddy ReadMe'


Read me
=======


Purpose
-------

**_Meddy_** is a simple 32-bit Markdown Windows-only editor written in Dyalog APL; it allows one to edit a Markdown file and to convert it into valid HTML5 by using MarkAPL; if you don't know what MarkAPL is refer to <https://github.com/aplteam/MarkAPL> for details.

Meddy's main advantage is not its features, its the fact that MarkAPL is used as converter: by using an editor which uses MarkAPL you can take advantage of the features that are MarkAPL specific.

The application was created with Dyalog 16.0 32 bit Unicode but is delivered as a stand-alone EXE, meaning that you don't need this version of Dyalog - or any version - in order to run it.


Usage
-----

You can start Meddy like any other Windows application and then use the menu command "New" or "Open" from the "File" menu. 

You can also start it from the command line with one of these statements in order to open a specific file or create a new document:

~~~
      Meddy.exe -file="{pathToMarkdownFile.md}
      Meddy.exe -new
~~~

There are three panes available in the main GUI:

* The left pane shows a tree view that represents all headers in the document and therefore acts as a table of contents. You can use this to navigate through the document.

  Note that when an item is shown in bold then you have a problem in the header hierarchy like a header of level 3 following a header of level 1: that's illegal.
* The center pane is where the Markdown can be edited.
* The right pane is two-fold:
  * On the "Preview" tab it shows a preview of how the HTML5 generated from the markdown will look like. For this the latest Microsoft engine is used. If available that is Edge.
  * On the "HTML" tab it shows the HTML generated from the markdown.

    By ticking the "Hide CSS" check box you can prevent the CSS --- which is a single compressed line --- from blurring your HTML. Of course the CSS is not removed from the HTML, it's just not shown.
    
If you wish to update the preview and/or the table of contents either select "Refresh preview" from the "Edit" menu or press F5. Pressing Ctrl+S (or selecting the "Save" command from the "File" menu) always refreshes the preview area and the table of content.

Tick the "Hide right pane" check box in order to use the space occupied by the "Preview" area for editing the markdown.


### Navigating through a document

You can navigate through a document in three ways:

* Click on an item in the TreeView representing the TOC.
* Move the cursor somewhere in the Markdown area.
* Click on a header in the Preview area.

No matter how you navigate, the three views are always kept in sync.


CSS Style sheets
----------------

By default Meddy uses the "MarkAPL" style sheet for the preview. You can switch to "BlackOnWhite" either from the "Preferences" menu (= for all documents you are going to save) or by embedding a parameter into each document explicitly defining the set of style sheets to be used.

The CSS defined in the style sheet is by default compressed and injected into the resulting HTML page. That makes the HTML fully independent from anything, at least as long as you do not, say, embedd images.

Instead of creating a stand-alone HTML page you might want to create one that links to one or more style sheets, for example in order to create a book-like website. In order to make that possible you have to tell Meddy where to save the resulting HTML page, and which style sheets to use.

This can be achieved by setting these parameters:

~~~
[parm]:cssUrl='CSS/'
[parm]:linkToCss=1
[parm]:leanpubExtensions=1
[parm]:screenCSS=Screen.CSS
[parm]:printCSS=Print.CSS
~~~

Note that you can specify more than one CSS file: separate them with commata. In case of conflicts the last one wins.

Note that for more detailed information there is a document "Styles.html" available. The document can be viewed from the "Help" menu.


LeanPub extensions
------------------

Leanpub (<https://leanpub.com/>) is a publishing platform for books. They've established a number of enhancements to Markdown that allow an author to add asides, info boxes and more, but also to highlight lines in the code, for examples for emphasizing lines that had been changed or added compared with a previous version. The extension might well be of interest even if you are not planning to use LeanPub's services.

There is a document "LeanPubExtensions.html" available in the Meddy install directory that documents these extensions. The document can be viewed from the "Help" menu.

Note that the two sets of style sheets that are coming with Meddy (MarkAPL_*.css and BlackOnWhite_*.css) both carry mark-up for the LeabPub extensions.

Note that `cssURL` should either be a URL or specify the CSS folder relative to where the HTML page will be saved.


Converting to and saving as HTML file
-------------------------------------

By default when a Markdown file is saved by Meddy there is also an HTML file saved as a sibling with the same name but the extension `.html` rather than `.md`. You can change this in two ways:

* In the preferences you can tell Meddy that it should...
  * always save an HTML file.
  * never save an HTML file.
  * always ask whether such an HTML file shall be saved or not.
* If you don't want the HTML file to be saved as a sibling of the Markdown file then you can add a file `.Meddy` to the folder where the Markdown lives. In that case Meddy knows that you want to save an HTML file and ignores the preferences.

  This file may contain a line like this:

  ~~~
  outputPath = '..\'
  ~~~ 

  This lets Meddy save the HTML file in the parent folder of the folder the Markdown file came from.

  Instead you can of course also specify an absolute path:

  ~~~
  outputPath = 'C:\My_HTML'
  ~~~


Update MarkAPL
-------------

Meddy comes with a particular version of `MarkAPL.dyalog`.

However, when Meddy is started it checks the folder `%PROGRAMDATA%\Meddy` for hosting a script `MarkAPL.dyalog`.

* In case it finds a "better" version this version is loaded without further ado.
* In case it finds an older version Meddy will ask whether this older version should be loaded.

This mechanism allows you to easily update MarkAPL without re-installing Meddy but also to go back to an older version if you want to.

You can find out  which version of MarkAPL Meddy is currently using via the "About" command from the "Help" menu.


Bugs
----

Send a bug report to <mailto:kai@aplteam.com>. Describe what you did, what you expected to happen and what actually happened. Don't assume that anything of this is obvious (it might well be for you but not necessarily for somebody else).

* Attach the files created as a result of the crash; crash files are written to:

  `"C:\Users\{UserID}\AppData\Local\Meddy\Errors"`
* Add the input file if possible.


Feature requests
---------------

Send an email to <mailto:kai@aplteam.com> to voice your opinion.


Misc
----

Meddy is free software. It may be distributed freely but must not be sold. Also, the code of the application must not be re-engineered and/or used for other purposes.

Meddy was written by Kai Jaeger --- [APL Team Ltd](https://aplteam/github.io)

| Created     | 2017-10-23 |
| Version     | 1.6.9      |
| Last update | 2018-08-17 |